func reverseArray<T>(arr: [T]) -> [T] {
	var temp = arr
	for (index, item) in arr.enumerate() {
		temp[(arr.count-1)-index] = item
	}
	return temp
}

var list: [String] = ["item1", "item2", "item3", "item4", "item5"]

reverseArray(list)
