//samegame.js
var blockSize = 40;
var maxColumn = 10;
var maxRow = 15;
var maxIndex = maxColumn * maxRow;
var board = new Array(maxIndex);
var component;

//Index function used instead of a 2D array
function index(column, row) {
    return column + (row * maxColumn);
}

function startNewGame() {
    //Delete blocks from previous game
    for (var i = 0; i < maxIndex; i++) {
        if (board[i] != null)
            board[i].destroy();
    }

    //Calculate board size
    maxColumn = Math.floor(background.width / blockSize);
    maxRow = Math.floor(background.height / blockSize);
    maxIndex = maxRow * maxColumn;

    //Initialize Board
    board = new Array(maxIndex);
    for (var column = 0; column < maxColumn; column++) {
        for (var row = 0; row < maxRow; row++) {
            board[index(column, row)] = null;
            createBlock(column, row);
        }
    }
}

function createBlock(column, row) {
    if (component == null)
        component = Qt.createComponent("Block.qml");

    // Note that if Block.qml was not a local file, component.status would be
    // Loading and we should wait for the component's statusChanged() signal to
    // know when the file is downloaded and ready before calling createObject().
    if (component.status == Component.Ready) {
        var dynamicObject = component.createObject(background);
        if (dynamicObject == null) {
            console.log("error creating block");
            console.log(component.errorString());
            return false;
        }
        dynamicObject.x = column * blockSize;
        dynamicObject.y = row * blockSize;
        dynamicObject.width = blockSize;
        dynamicObject.height = blockSize;
        board[index(column, row)] = dynamicObject;
    } else {
        console.log("error loading block component");
        console.log(component.errorString());
        return false;
    }
    return true;
}

function handleClick(xPos, yPos) {
    var column = Math.floor(xPos / gameCanvas.blockSize);
    var row = Math.floor(yPos / gameCanvas.blockSize);
    if (column >= maxColumn || column < 0 || row >= maxRow || row < 0)
        return;
    if (board[index(column, row)] == null)
        return;
    //If it's a valid block, remove it and all connected (does nothing if it's not connected)
    floodFill(column, row, -1);
    if (fillFound <= 0)
        return;
    gameCanvas.score += (fillFound - 1) * (fillFound - 1);
    shuffleDown();
    victoryCheck();
}

// Save the High Scores table.
// First we call sendHighScore() if it is possible to send the high scores to an online database.
// Then, we use the Offline Storage API to maintain a persistant SQL database unique to
// this application. We create an offline storage database for the high scores using
// openDatabase() and prepare the data and SQL query that we want to use to save it.
// The offline storage API uses SQL queries for data manipulation and retrieval, and in
// the db.transaction() call we use three SQL queries to initialize the database (if necessary),
// and then add to and retrieve high scores. To use the returned data, we turn it into a string
// with one line per row returned, and show a dialog containing that string.
function saveHighScore(name) {
    if (scoresURL != "")
        sendHighScore(name);

    var db = openDatabaseSync("SameGameScores", "1.0", "Local SameGame High Scores", 100);
    var dataStr = "INSERT INTO Scores VALUES(?, ?, ?, ?)";
    var data = [name, gameCanvas.score, maxColumn + "x" + maxRow, Math.floor(gameDuration / 1000)];
    db.transaction(function(tx) {
        tx.executeSql('CREATE TABLE IF NOT EXISTS Scores(name TEXT, score NUMBER, gridSize TEXT, time NUMBER)');
        tx.executeSql(dataStr, data);

        var rs = tx.executeSql('SELECT * FROM Scores WHERE gridSize = "12x17" ORDER BY score desc LIMIT 10');
        var r = "\nHIGH SCORES for a standard sized grid\n\n"
        for (var i = 0; i < rs.rows.length; i++) {
            r += (i + 1) + ". " + rs.rows.item(i).name + ' got ' + rs.rows.item(i).score + ' points in ' + rs.rows.item(i).time + ' seconds.\n';
        }
        dialog.show(r);
    });
}

// If the player enters a name, we send the data to the web service using this code.
// You’ve seen how you can store high scores locally, but it is also easy to integrate
// a web-enabled high score storage into your QML application. The implementation we’ve
// done here is very simple: the high score data is posted to a php script running on
// a server somewhere, and that server then stores it and displays it to visitors.
// You could also request an XML or QML file from that same server, which contains and
// displays the scores, but that’s beyond the scope of this tutorial.
// The php script we use here is available in the examples directory.
function sendHighScore(name) {
    var postman = new XMLHttpRequest()
        var postData = "name=" + name + "&score=" + gameCanvas.score + "&gridSize=" + maxColumn + "x" + maxRow + "&time=" + Math.floor(gameDuration / 1000);
    postman.open("POST", scoresURL, true);
    postman.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    postman.onreadystatechange = function() {
        if (postman.readyState == postman.DONE) {
            dialog.show("Your score has been uploaded.");
        }
    }
    postman.send(postData);
}

function victoryCheck() {
    //Award bonus points if no blocks left
    var deservesBonus = true;
    for (var column = maxColumn - 1; column >= 0; column--)
        if (board[index(column, maxRow - 1)] != null)
            deservesBonus = false;
    if (deservesBonus)
        gameCanvas.score += 500;

    //Check whether game has finished
    if (deservesBonus || !(floodMoveCheck(0, maxRow - 1, -1)))
        dialog.show("Game Over. Your score is " + gameCanvas.score);
    /*if (deservesBonus || !(floodMoveCheck(0, maxRow - 1, -1))) {
        gameDuration = new Date() - gameDuration;
        nameInputDialog.showWithInput("You won! Please enter your name: ");
    }*/
}

function floodFill(xIdx, yIdx, type) {

}

function shuffleDown() {

}

function floodMoveCheck(xIdx, yIdx, type) {

}

