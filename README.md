Explicação do código

1. A função `countLettersConsonantsVowelsWords` recebe uma string como parâmetro e retorna uma tupla com as contagens de letras, consoantes, vogais e palavras;

2. Temos um conjunto chamado "vowels" que contém as vogais em minúsculas. Usarei esse conjunto para verificar se um caractere é uma vogal;

3. Em seguida, transformei a string em minúsculas usando o método "lowercased()". Isso facilita a verificação posterior;

4. Utilizei o método "filter" para criar uma nova sequência de caracteres chamada "letters" que contém apenas os caracteres alfabéticos da string. A função de filtro "{$0.isLetter}" verifica se cada caractere é uma letra;

5. Utilizei também o método "split(separator:)" para dividir a string em palavras com base no separador "espaço em branco". Cada palavra é representada como um tipo Substring. Por isso, usamos "map { String($0) }" para convertê-las em instâncias de String;

6. Agora, temos a contagem total de letras com "letters.count";

7. Para contar as consoantes, filtrei a sequência "letters" usando o predicado "{ !vowels.contains($0) }". Ele retorna apenas os caracteres que não estão presentes no conjunto de vogais e a contagem dos caracteres será feita usando "count";

8. Para contar as vogais, fiz o oposto do passo anterior. Filtei a sequência "letters" usando o predicado "{ vowels.contains($0) }" para obter apenas as vogais. Depois, calculei a contagem desses caracteres;

9. Para contar as palavras, utilizei "words.count", pois a variável "words" agora contém um array de palavras obtidas através do método "split(separator:)";

10. Finalmente, retorno a tupla com as contagens de letras, consoantes, vogais e palavras;

11. Na parte final do código, defini uma string de exemplo "inputString" e chamei a função "countLettersConsonantsVowelsWords" passando essa string como argumento;

12. Armazei as contagens retornadas pela função em uma tupla chamada "(letterCount, consonantCount, vowelCount, wordCount)";

13. Por fim, imprimi as contagens usando o vulgo "print()".

Espero que você entenda o funcionamento do código. Grata em te ajudar.#   C a r o l - R e p o s i t o r y  
 