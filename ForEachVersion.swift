func countLettersConsonantsVowelsWords(in string: String) -> (Int, Int, Int, Int) {
    let vowels: Set<Character> = ["a", "e", "i", "o", "u"]
    var letterCount = 0
    var consonantCount = 0
    var vowelCount = 0
    var wordCount = 0
    
    /* 
    1. Chamei o metodo 'lowecased' para converter as string para minusculo;
    2. Depois chamei o famoso metodo 'forEach', que sera responsavel por iterar em cada caractere da string
    3. Depois irei verificar se cada caractere e uma letrinha usando 'character.isLetter'.
        Se for incrementamos letterCount em 1;
    4. Mas se o caractere for uma vogal? Verificamos usando 'vowels.contains(character)', caso seja 
        incrementamos 'vowelCount' em 1. Caso contrário, so pode ser uma consoante, entao, incrementamos 'consonantCount' em 1;
    5. Depois do 'forEach' terminar, usei o metodo 'split(whereSeparator:)' na string para dividir a string em partes onde 
        o separador é um caractere que não é uma letra '!$0.isLetter';
    6. Chamei o metodo 'count' para obter o numero de palavras resultantes da divisao e depois atribui o resultado a variavel 'wordCount'.
    7. Depois e retornado a contagem das palavras, letras, vogais e consoantes.
    8. Espero que isso te ajude. <3
    */

    string.lowercased().forEach { character in
        if character.isLetter {
            letterCount += 1
            if vowels.contains(character) {
                vowelCount += 1
            } else {
                consonantCount += 1
            }
        }
    }
    
    wordCount = string.split(whereSeparator: { !$0.isLetter }).count
    
    return (letterCount, consonantCount, vowelCount, wordCount)
}
