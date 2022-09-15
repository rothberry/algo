const balanceParenthesis = (str) => {
	// Take1
	// Counters
	// iterate over the str
	// For each loop
	//  condition for opening
	//    increase our openings count
	//  condition for closing
	//    if we have an opening already
	//      reduce count by 1
	//    if not
	//      we need to add our missing parts

	let counter = 0
	let missing = 0

	for (let i = 0; i < str.length; i++) {
		if (str[i] === "(") {
			counter += 1
		}
		if (str[i] === ")") {
			if (counter > 0) {
				counter -= 1
			} else {
				missing += 1
			}
		}
		console.log({ i, current: str[i], counter, missing })
	}
	return counter + missing
}

const str1 = "(()())"
const str2 = "()))"
const str3 = ")" // 1
const str4 = ")(" // 2

console.clear()

console.log("TESTING...")
// console.log("2:", balanceParenthesis(str2))
// console.log("3:", balanceParenthesis(str3))
// console.log("4:", balanceParenthesis(str4))
console.log("5:", balanceParenthesis("()(()("))
console.log("6:", balanceParenthesis("()gegf(hr(a)ahsg("))

// console.log("5:", balanceParenthesis(")))))))(((()()))(kfhgasdkhfgcbjky3grshsgf1635fgf)())()((())))()()())()("))
