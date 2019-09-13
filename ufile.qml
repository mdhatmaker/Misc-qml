UFile{
    id: uifile
    path : "C:/icon.ico"
}
Image {
    source: uifile.base64.length > 0 ? "data:image/png;base64," + uifile.base64: ""
}