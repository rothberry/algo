/**
 * @param {string} s
 * @return {number}
 *
 * Given a string of Roman Numerals
 * the output is their value as an integer
 */

const romanNums = {
	I: 1,
	V: 5,
	X: 10,
	L: 50,
	C: 100,
	D: 500,
	M: 1000,
}

const specials = {
	IV: 4,
	IX: 9,
	XL: 40,
	XC: 90,
	CD: 400,
	CM: 900,
}

const romanToInt = (s) => {
	// FIRST hardcode
	// giant switch statement that checks ALL the letters
	// case: "I" => 1
	// ...
	// case: "IV" => 4
	// ///////
	// SECOND
	// Create our total at 0
	// split our str into an array
	// iterate over the array
	//  increase the total by whatever the current letter's value is
	//  condtion1:
	//    is or current value is just one letter
	//    add the current value to our total
	//  condition2:
	//    is we have our special pair or our next value is greater than our current
	//    either need to check our specials obj if our pair exists OR add the next value minus the current to our total
	//  return whatever the total is

	// EX IV
	// i=0 => cur=1, next=5
	//  subtract next from cur and add to total
	// i=0 => str="I", str="IV"
	//  check if specials[str]
	//  increase i once more

	const arr = s.split("")
	let total = 0
	let i = 0

	while (i < arr.length) {
		const cur = romanNums[arr[i]]
		const next = romanNums[arr[i + 1]]
		console.log({ cur, next })
		if (next > cur) {
			total += next - cur
			i += 1
		} else {
			total += cur
		}
		console.log({ total })
		i += 1
	}
	return total
}

console.log("TESTING")
// console.log(romanToInt("IV"))
console.log(romanToInt("MCMXCIV"))
