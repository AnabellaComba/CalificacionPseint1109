// Funci�n para encontrar la diferencia entre el valor m�s peque�o y el valor m�s grande
Funcion DiferenciaMinMax(arreglo, tamanio)
    Definir min, max, i Como Real
	
    min <- arreglo[1]
    max <- arreglo[1]
	
    Para i = 2 Hasta tamanio
        Si arreglo[i] < min Entonces
            min <- arreglo[i]
        FinSi
        Si arreglo[i] > max Entonces
            max <- arreglo[i]
        FinSi
    FinPara
	
    Escribir  max - min
FinFuncion

Algoritmo InicializarYCalcularDiferencia
    Definir arreglo Como Real
	Dimension arreglo[100] 
    Definir tamanio, i, opcion Como Entero
    Definir diferencia Como Real
	
    // Solicitar el tama�o del arreglo
    Escribir "Ingrese el tama�o del arreglo (m�ximo 100):"
    Leer tamanio
	
    // Verificar que el tama�o sea v�lido
    Si tamanio <= 0 O tamanio > 100 Entonces
        Escribir "Tama�o inv�lido. Debe ser entre 1 y 100."
FinSi

// Solicitar el tipo de llenado del arreglo
Escribir "�Desea llenar el arreglo con datos aleatorios (1) o manualmente (2)?"
Leer opcion

Segun opcion Hacer
	1:
		// Llenar el arreglo con datos aleatorios entre 0 y 100
		Para i = 1 Hasta tamanio
			arreglo[i] <- Aleatorio(0, 100)
		FinPara
	2:
		// Llenar el arreglo manualmente
		Para i = 1 Hasta tamanio
			Escribir "Ingrese el valor para el elemento ", i, ":"
			Leer arreglo[i]
		FinPara
	De Otro Modo:
		Escribir "Opci�n inv�lida."
FinSegun
FinAlgoritmo
// Calcular la diferencia entre el valor m�s grande y el m�s peque�o
 SubProceso diferencia <- DiferenciaMinMax1(arreglo, tamanio)

// Mostrar el arreglo y la diferencia calculada
Escribir "El arreglo es:"
Para i = 1 Hasta tamanio
	Escribir arreglo[i]
FinPara

Escribir "La diferencia entre el valor m�s grande y el valor m�s peque�o es: ", diferencia

FinSubProceso


