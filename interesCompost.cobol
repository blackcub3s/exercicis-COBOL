*> PROGRAMA QUE DONATS A LES LINIES 11, 12 i 13 una quanitat d'anys, un TAE anual en tant per 1 i 
*> una quantitat inicial Q, respectivament, imprimeix per pantalla la quantitat final Q' (Q modificada) 
*> que tindrem després d'haver conseguit interès compost, reinvertint els guanys any rere any.

*>COMPILA EN --> GNU COBOL 3.1.2 || https://www.jdoodle.com/execute-cobol-online/
*>FUNCIONA BÉ PER VALORS D'ANYS I INTERESOS PETITS. SI QUANITAT Q REQUEREIX MÉS DE 6 DÍGITS CALDRIA MODIFICAR LA QUANTITAT DE NOMBRES QUE POT ASSUMIR Q (FENT "01 Q PIC 9999999V99", per exemple)
*>A MILLORAR: CAL VIGILAR AMB ELS VALORS TRUNCATS DECIMALS A CADA MULTIPLICACIÓ PERQUÈ VARIEN LLEUGERAMENT ELS DECIMALS DEL RESULTAT FINAL


IDENTIFICATION DIVISION.
PROGRAM-ID. HELLO-WORLD.
DATA DIVISION.
    WORKING-STORAGE SECTION.
        01 nreAnys PIC 99.
        01 Q PIC 999999V99.     *>Fins a 100 000 euros de quanitat inicial i quantitat final després de l'interes compost
        01 interes PIC 9V99.    *> expressar-lo en tant per 1
PROCEDURE DIVISION.
    SET nreAnys TO 10.          *>imposició a plaç fix a 10 anys.
    SET interes TO 1.05.        *>interès del 5 per cent anual (TIN o TAE)
    SET Q TO 100000.            *>Capital inicial de 100 000 euros 
    DISPLAY "Quantitat inicial (any 0): "Q" €".
    
    
    PERFORM nreAnys TIMES
        MULTIPLY interes BY Q      *>important: guarda el valor de la multiplicació en Q (és com si fessis Q = Q*interes a un llenguatge de programació normal)
    END-PERFORM. *>aqui acaba la sentencia
   
    DISPLAY " Quantitat Final (any "nreAnys"): "Q" €".
    
    
   
STOP RUN.
