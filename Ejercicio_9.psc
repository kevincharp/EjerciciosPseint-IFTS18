Algoritmo Ejercicio_9
	Escribir 'Calcular superficie de un triángulo'
	Repetir
		Escribir '¿En que unidad desea usted calcular la superficie centimetros o metros?'
		Leer A
		Si A = 'centimetros' o A = 'metros' Escribir 'Usted ingresó ' A
			
		FinSi
		Si A <> 'centimetros' y A <> 'metros' Escribir 'Valor inválido'
			
		FinSi
	Hasta Que A = 'centimetros' o A = 'metros'
	
	Escribir 'Ingrese distancia de la base en ' A
	Leer B
	Escribir 'Ingrese distancia de la altura en ' A
	Leer H
	S = (B*H) / 2
	Escribir 'La superficie es ' S,' ' A ' cuadrados'
	
FinAlgoritmo
