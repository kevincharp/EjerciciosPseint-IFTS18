Algoritmo Ejercicio_15
	Escribir 'Calcule el costo de su llamada'
	Escribir 'Ingrese la duracion de su llamada'
	Leer tiempo
	Escribir '¿Minutos = m u Horas = h?'
	Leer mh
	Si mh = 'h' Entonces tiempo = (tiempo * 60)
		Escribir 'El tiempo ingresado es: ', tiempo, ' minutos.'
	SiNo 
		Si tiempo = 1 Entonces
				Escribir 'El tiempo ingresado es: ', tiempo, ' minuto.'
		SiNo tiempo=tiempo 
				Escribir 'El tiempo ingresado es: ', tiempo,' minutos.'
		FinSi	
	FinSi
	Si tiempo = 3 Entonces costo = (tiempo * 0.5)
		Escribir 'El costo de su llamada es ', costo, ' pesos'
	SiNo
		Si tiempo > 3 Entonces costo = (tiempo-3)*0.10+(3*0.5)
			Escribir 'El costo de su llamada es ', costo, ' pesos'
			
		Finsi
		Si tiempo < 3 Entonces costo = (3*0.5)
			Escribir 'El costo de su llamada es ', costo, ' pesos'
		FinSi
	FinSi

FinAlgoritmo
