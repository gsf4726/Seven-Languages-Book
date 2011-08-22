# Do 1: Enhance the XML program to add spaces to show the indentation structure

Builder := Object clone

# Old forward implementation
Builder forward := method(
    writeln("<", call message name, ">")
    call message arguments foreach(
        arg,
        content := self doMessage(arg);
        if(content type == "Sequence", writeln(content)))
    writeln("</", call message name, ">")
)

# Start new forward implementation

Builder currentIndentLevel := 0

Builder forward = method(
    methodMissingName := call message name
    indentionString := getIndention()
    writeln(indentionString, "<", methodMissingName, ">")
    
    currentIndentLevel = currentIndentLevel + 1
    
    call message arguments foreach(
        arg,
        content := self doMessage(arg);
        if(content type == "Sequence", 
          writeln(getIndention(), content))
    )
    
    currentIndentLevel = currentIndentLevel - 1
    
    writeln(indentionString, "</", methodMissingName, ">")
)

Builder getIndention := method(
    leadingSpaces := ""
    currentIndentLevel repeat(leadingSpaces = leadingSpaces .. "  ")
    return leadingSpaces
)

"\nIndented builder syntax:" println
Builder ul(
       li("Io"),
       li("Lua"),
       li("JavaScript"))
       
       
# Do 2: Create a list syntax that uses brackets

curlyBrackets := method(
    call message arguments
)

"\nBracket list syntax:" println
{1,2,3,4,5} println
{"a", "b", "c", "d", "e"} println
[1, 2, 3] println

