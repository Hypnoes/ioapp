//  ����xml����ȡ�ļ��е�appno��ǩ����д��appno�ļ�
SGML //load sgml a args at(1)
if(filename == nil, "usage: -filename " println ; return)
xml := File with(filename) openForReading contents asXML
appnos := xml elementsWithName("appno")
appnos = appnos map(asString asMutable removePrefix("<appno>") removeSuffix("</appno>"))
appnos println
File with("appno") openForUpdating write(appnos asString) close
