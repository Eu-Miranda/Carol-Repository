func countLettersConsonantsVowelsWords(in string: String) -> (Int, Int, Int, Int) {
    let vowels: Set<Character> = ["a", "e", "i", "o", "u"]
    let letters = string.lowercased().filter { $0.isLetter }
    let words = string.split(separator: " ").map { String($0) }
    
    let letterCount = letters.count
    let consonantCount = letters.filter { !vowels.contains($0) }.count
    let vowelCount = letters.filter { vowels.contains($0) }.count
    let wordCount = words.count
    
    return (letterCount, consonantCount, vowelCount, wordCount)
}

// Exemplo de uso
let inputString = "Carol de Portugal"
let (letterCount, consonantCount, vowelCount, wordCount) = countLettersConsonantsVowelsWords(in: inputString)

print("Quantidade de letras: \(letterCount)")
print("Quantidade de consoantes: \(consonantCount)")
print("Quantidade de vogais: \(vowelCount)")
print("Quantidade de palavras: \(wordCount)")