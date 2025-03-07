Algoritmo VectorNombresLongitud
    Definir tamanio, i Como Entero
    Definir nombres Como Cadena
    Definir longitudes Como Entero
	Dimension nombres(100)
	Dimension longitudes(100)
    
    // Solicitar el tama�o de los vectores
    Escribir "Ingrese el tama�o deseado para los vectores:"
    Leer tamanio
    
    // Verificar que el tama�o sea positivo y dentro del rango permitido
    Si tamanio <= 0 O tamanio > 100 Entonces
        Escribir "Tama�o inv�lido. Debe ser entre 1 y 100."
	FinSi

// Leer los nombres y calcular las longitudes
Para i = 1 Hasta tamanio
	Escribir "Ingrese el nombre ", i, ":"
	Leer nombres[i]
	longitudes[i] = Longitud(nombres[i])
FinPara

// Mostrar los nombres y sus longitudes
Escribir "Nombres y longitudes:"
Para i = 1 Hasta tamanio
	Escribir "Nombre: ", nombres[i], " - Longitud: ", longitudes[i]
FinPara
FinAlgoritmo