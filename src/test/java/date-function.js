function calculateShiftedDate(containsAntes, daysString) {
    var dateOffset = parseInt(daysString);
    var date = new Date('2023-06-07T00:00:00.000Z');

    if (containsAntes){
        date.setDate(date.getDate() - dateOffset);
    }else{
        date.setDate(date.getDate() + dateOffset);
    }

    var day = date.getDate()+1;
    var month = date.getMonth() + 1; // Se suma 1 para obtener el mes correcto
    var year = date.getFullYear();

    if (day < 10) {
      day = '0' + day;
    }
    if (month < 10) {
      month = '0' + month;
    }

    // Formatear la fecha en el formato DD/MM/YYYY
    var shiftedDate = day + '/' + month + '/' + year;

    return shiftedDate;
}