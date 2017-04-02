//   ÔöÇ¿°æxml
Builder := Object clone

tabCount := 0
Builder forward := method(
  tab := "    "
  tabCount repeat(write(tab)); writeln("<", call message name, ">")
  tabCount = tabCount + 1
  call message arguments foreach(arg,
    content := self doMessage(arg);
    if(content type == "Sequence", tabCount repeat(write(tab)); writeln(content))
  )
  tabCount = tabCount -1
  tabCount repeat(write(tab)); writeln("</", call message name, ">")
)

// Test
Builder html(
  head(
    title("This is a test for a XML Generator By Io")
  )
  body(
    h1("Which Language do you use most? ")
    ul(
      li("Io"),li("Java"),li("Javascript"),li("Ruby"),li("Python"),
      li("Scala"),li("C"),li("C++")
    )
  )
)
