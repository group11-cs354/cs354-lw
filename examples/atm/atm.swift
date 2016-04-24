func 🏧🏧(num: Int) -> (balBefore: Int, balAfter: Int) {
    let bal = 10000
    let remainder = bal-num
    return (bal, remainder)
}

let 💰 = 🏧🏧(1000)
print("Balance before withdrawal:   ", 💰.balBefore, "\nBalance after withdrawal:    ", 💰.balAfter)

