## Explicação do Código

1. A função "countLettersConsonantsVowelsWords" recebe uma string como parâmetro e retorna uma tupla com as contagens de letras, consoantes, vogais e palavras.

2. Eu tenho um conjunto chamado "vowels" que contém as vogais em minúsculas. Eu uso esse conjunto para verificar se um caractere é uma vogal.

3. Em seguida, eu converto a string para minúsculas usando o método "lowercased()". Isso facilita a verificação posterior.

4. Eu uso o método "filter" para criar uma nova sequência de caracteres chamada "letters" que contém apenas os caracteres alfabéticos da string. A função de filtro "{$0.isLetter}" verifica se cada caractere é uma letra.

5. Também uso o método "split(separator:)" para dividir a string em palavras com base no separador "espaço em branco". Cada palavra é representada como um tipo Substring. Por isso, uso "map { String($0) }" para convertê-las em instâncias de String.

6. Agora, eu tenho a contagem total de letras com "letters.count".

7. Para contar as consoantes, eu filtro a sequência "letters" usando o predicado "{ !vowels.contains($0) }". Ele retorna apenas os caracteres que não estão presentes no conjunto de vogais, e eu conto esses caracteres usando "count".

8. Para contar as vogais, eu faço o oposto do passo anterior. Filtro a sequência "letters" usando o predicado "{ vowels.contains($0) }" para obter apenas as vogais. Em seguida, conto esses caracteres.

9. Para contar as palavras, eu uso "words.count", pois a variável "words" agora contém um array de palavras obtidas através do método "split(separator:)".

10. Finalmente, eu retorno a tupla com as contagens de letras, consoantes, vogais e palavras.

11. Na parte final do código, eu defino uma string de exemplo "inputString" e chamo a função "countLettersConsonantsVowelsWords" passando essa string como argumento.

12. Eu armazeno as contagens retornadas pela função em uma tupla chamada "(letterCount, consonantCount, vowelCount, wordCount)".

13. Por fim, eu imprimo as contagens usando o comando "print()".
