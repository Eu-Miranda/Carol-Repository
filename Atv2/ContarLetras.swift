func countLetters(in text: String) -> [Character: Int] {
    var letterCount: [Character: Int] = [:]
    
    for letter in text {
        if letter.isLetter {
            letterCount[letter, default: 0] += 1
        }
    }
    
    return letterCount
}

// Exemplo de uso
let inputText = "Hello, world!"
let letterCount = countLetters(in: inputText)

print(letterCount)