.MODEL small 
.DATA
; variable que contiene el texto que qeuremos mostrar
nombre DB 'EDUARDO PELAEZ $'; $ significa el final de la cadena 
carnet DB '1096917$'
texto DB ' el valor a imprimir es:$'


.STACK
.CODE
Programa: ;etiqueta de inicio de programa
;inicializar programa

MOV AX, @DATA ; guardando direcciòn de inicio segmento de datos
MOV DS, AX

; imprimir cadena

MOV DX, OFFSET nombre ; asignando a DX la variable cadena
MOV AH, 09h ; decimos que se imprimira una cadena
INT 21h ; ejecuta la interrupciòn, imprimira

MOV DX, OFFSET carnet ; asignando a DX la variable cadena
MOV AH, 09h ; decimos que se imprimira una cadena
INT 21h ; ejecuta la interrupciòn, imprimira

MOV DX, OFFSET texto ; asignando a DX la variable cadena
MOV AH, 09h ; decimos que se imprimira una cadena
INT 21h ; ejecuta la interrupciòn, imprimira

MOV AH, 02H
MOV DX, 32
INT 21h

; finalizar el programa
MOV AH, 4ch ; finalizar el proceso 
INT 21h ; ejecuta la interrupciòn 
END Programa