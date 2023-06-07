function fn(input) {
    // Removemos los espacios en blanco de la cadena
    var stringNoSpaces = input.replace(/\s/g, '');

    // Removemos el signo de pregunta y el igual
    stringNoSpaces = stringNoSpaces.substring(0, stringNoSpaces.length - 2);

    // Utilizamos el método eval para resolver el problema matematico
    var result = eval(stringNoSpaces);

    return result.toString();
}