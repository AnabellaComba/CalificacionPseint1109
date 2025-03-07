Algoritmo ClasificacionNotas
    Definir notas Como Real
	Dimension notas[100]
    Definir i, deficientes, regulares, buenos, excelentes Como Entero
	
    // Inicializar los contadores
    deficientes <- 0
    regulares <- 0
    buenos <- 0
    excelentes <- 0
	
    // Generar aleatoriamente las notas entre 0 y 10
    Para i = 0 Hasta 99 Hacer
		notas[i] = Aleatorio(0,10)
    FinPara
	
    // Clasificar las notas
    Para i = 0 Hasta 99 Hacer
		        Si notas[i] >= 0 Y notas[i] <= 3 Entonces
            deficientes <- deficientes + 1
        Sino
            Si notas[i] >= 4 Y notas[i] <= 6 Entonces
                regulares <- regulares + 1
            Sino
                Si notas[i] >= 7 Y notas[i] <= 8 Entonces
                    buenos <- buenos + 1
                Sino
                    Si notas[i] >= 9 Y notas[i] <= 10 Entonces
                        excelentes <- excelentes + 1
                    FinSi
                FinSi
            FinSi
        FinSi
    FinPara
	
    // Mostrar resultados
    Escribir "Cantidad de estudiantes Deficientes (0-3): ", deficientes
    Escribir "Cantidad de estudiantes Regulares (4-6): ", regulares
    Escribir "Cantidad de estudiantes Buenos (7-8): ", buenos
    Escribir "Cantidad de estudiantes Excelentes (9-10): ", excelentes
FinAlgoritmo