// Given an input array and a target value k, return all distinct pairs of consecutive numbers that add up to k. A pair is distinct if no other pair contains the same numbers.

// The order of the pairs and order of the values in each pair does not matter, e.g. we consider [[2, 8], [7, 3]] to be the same as [[3, 7], [8, 2]].

const distinctPairSum = (arr, k) => {
	// ? FIRST
	// The first issue is that the array is unsorted
	// we can sort the array
	// Once we have at least the sorted array, we have two pointers that look at the beginning and the end
	// Loop while checking the first and last pointer's sum and moving them closer to the middle each loop until they are looking at the same number
	// If the sum is k, then check if it's in our output and add it
	// return the output

	// * SECOND
	// create a pair tracking object
	// iterate through arr
	//  for each loop
	//  check if the current plus the next value is k
	//  AND check if we've already seen the current value in our obj
	//  AND check if we've already seen the NEXT value in our obj
	// After the loop return all the pairs as an array from the object

	const pairs = {}

	for (let i = 0; i < arr.length - 2; i++) {
		const current = arr[i]
		const next = arr[i + 1]
		const currentSum = current + next
		console.log({ current, next, currentSum })
		if (currentSum === k && !pairs[current] && !pairs[next]) {
			pairs[current] = [current, next]
			console.log(pairs)
		}
	}
	return Object.values(pairs)
}

console.clear()
console.log("TESTING>>>")
let arr1 = [0, 1, 1, 2, 0, 1, 1]
console.log(distinctPairSum(arr1, 2))
// Output: [[1, 1], [2, 0]]

let arr2 = [3, 4, 2, 1, 5, 2, 8, 2]
// [1,2,2,2,3,4,5,8]
console.log(distinctPairSum(arr2, 10))
// Output: [[2, 8]]
