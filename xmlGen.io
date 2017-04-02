//  解析xml，提取文件中的appno标签，并写入appno文件
SGML //load sgml a args at(1)
if(filename == nil, "usage: -filename " println ; return)
xml := File with(filename) openForReading contents asXML
appnos := xml elementsWithName("appno")
appnos = appnos map(asString asMutable removePrefix("<appno>") removeSuffix("</appno>"))
appnos println
File with("appno") openForUpdating write(appnos asString) close
