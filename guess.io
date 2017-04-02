Guess := object clone do(
	// Generating random number
	number := Random value(1,100) floor
	10 repeat(
	"Please guess a number between 1 and 100:" println
	guessNumber := File standardInput readLine as Number
	if(guessNumber > number) then("B" println) elseif(guessNumber <  number) then("S" println) else("C" println; break)
	)
)
