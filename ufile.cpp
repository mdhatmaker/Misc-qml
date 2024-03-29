#include "ufile.h"
#include <QDir>
#include <QUrl>

// https://stackoverflow.com/questions/55887675/loading-from-byte-array-to-image-in-qml

UFile::UFile(QObject *parent) : QObject(parent)
{

}
QByteArray UFile::data() const{
    return _data;
}
QString UFile::path() const{
    return _path;
}
int UFile::length() const{
    int i =_data.count();
    return i;
}
void UFile::setPath(const QString &path){
    if(_path== path){
        return;
    }
    _path = path;
    readFile(_path);
    Q_EMIT pathChanged(_path);
    Q_EMIT dataChanged();
    Q_EMIT base64Changed();
}

QString UFile::base64() const
{
    return _data.toBase64();
}

void UFile::readFile(const QString &filePath){
    if(!filePath.isEmpty()){
        QString _fp = filePath;
        if(_fp.startsWith("file:///"))
            _fp = QUrl(filePath).toLocalFile();
        if(!_fp.isEmpty()){
            _fp = QDir::toNativeSeparators(_fp);
            QFile file(_fp);
            if (!file.open(QIODevice::ReadOnly))
                return ;
            _data = file.readAll();
        }
    }
}