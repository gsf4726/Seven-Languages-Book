"Day 1 Self-Study" println
"" println

"Answers..." println

"------------------------" println

"Answer 1: Evaluate 1 + 1 and then 1 + 'one'. Is Io strongly typed or weakly typed? Support with code." println
"1 + 1 = " print
1 + 1 println
"1 + one = " print
e := try(
  1 + "one"
) 
e catch(Exception,
  "Exception: Io is strongly typed" println
)

"------------------------" println

"Answer 2: Is 0 true or false? Emtpy string? nil?" println
"0 and true" println
0 and true println
"\"\" and true" println
"" and true println
"nil and true" println
(nil and true) println

"------------------------" println

"Answer 3: How can you tell what slots a prototype supports?" println
"With slotNames, for example List slotNames =" println
List slotNames println

"------------------------" println

"Answer 4: What is the difference between =, := and ::=?" println
"::=	 Creates slot, creates setter, assigns value" println
":=	 Creates slot, assigns value" println
"=	 Assigns value to slot if it exists, otherwise raises exception" println

"------------------------" println
"Dos..." println
"------------------------" println
"Do 1: Run an Io program from a file." println
"Done." println
"------------------------" println
"Do 2: Execute the code in a slot given its name" println
AsciiArt := Object clone
AsciiArt paint := method(
  "  _________________________________________________" println
  " |'|'|'|'|'|'|'|'|'|'|'|'|'|'|'|'|'|'|'|'|'|'|'|'|'|" println
  " |___1___2___3___4___5___6___7___8___9__10__11__12_|" println
  )

AsciiArt paint