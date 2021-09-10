Algoritmo Ejercicio_26
	Definir num1,num2,R,N,res Como entero
	
	Escribir 'Ingrese primer numero'
	Leer num1
	Escribir 'Ingrese el segun numero'
	Leer num2
	Si num1>num2 Entonces
		R=num1 
		N=num2
		
	SiNo
		N=num1
		R=num2
		Escribir 'El mayor es el ',R, ' y el menor es ',N
	FinSi
	res=R-N
	Escribir 'El resultado es ',res
	Si res<R y res>N  Entonces 
		Escribir res, ' es menor que ', R
		Escribir res, ' esta entre ',N ' y ' R
	SiNo
		Si res>R o res<N Entonces
			Escribir res, ' es menor que ', N
			Escribir res, ' no esta entre ', N ' y ' R
		FinSi
	FinSi

	
	
FinAlgoritmo



