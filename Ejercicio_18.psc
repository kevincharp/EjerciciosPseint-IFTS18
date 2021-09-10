Algoritmo Ejercicio_18
	//Dado dos numeros ingresados por el usuario imprimir los numeros que estan entre estos
	Definir N1,N2,R,N,num Como Entero
	Escribir 'Ingrese primer número'
	Leer N1
	Escribir 'Ingrese segundo numero'
	Leer N2
	//Aca se define el numero mayor y menor // R = mayor y N = menor
	Si N1>N2 Entonces
		R <- N1
		N <- N2
	SiNo
		R <- N2
		N <- N1
	FinSi
	Escribir 'Los numero entre ', N ' y ', R ,' son: '
	//Definir variable num
	num=N
	// Se suma 1 por cada resultado de la variable num
	Repetir
		num=num+1
		Escribir num
	Hasta Que num=R-1
FinAlgoritmo
