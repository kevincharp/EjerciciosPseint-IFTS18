Algoritmo Ejercicio_12
	Escribir 'Calcule el índice de masa corporal de una persona'
	Escribir 'Ingrese peso en kilogramos'
	Leer P
	Escribir 'Ingrese altura en metros'
	Leer A
	IMC = P / (A*A)
	Escribir 'El IMC es ' IMC
	Si IMC  <= 24.9 Entonces Escribir 'Tú peso es normal'
		
	FinSi
	Si IMC  >= 25 Entonces Escribir 'Tienes sobrepeso'
		
	FinSi
	Si IMC >= 30 Entonces Escribir 'Tienes obesidad'
		
	FinSi
	Si IMC >= 35 Entonces Escribir 'Tiene obesidad extrema'
		
	FinSi
FinAlgoritmo

