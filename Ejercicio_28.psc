Algoritmo Ejercicio_28
	Definir num1,num2,res Como Entero
	Repetir
		
		Escribir 'Ingrese primer numero'
		Leer num1
		Escribir 'Ingrese operacion a realizar(+,-,*,/)'
		Leer oper
		Escribir 'Ingrese segundo numero'
		Leer num2
		Si oper='+' Entonces
			res= num1+num2
			Escribir res
		SiNo
			Si oper='-' Entonces
				res=num1-num2
				Escribir res
			SiNo
				Si oper='*' Entonces
					res=num1*num2
					Escribir res
				SiNo
					Si oper='/' Entonces
						res=num1/num2
						Escribir res
					FinSi
				FinSi
			FinSi
			
		FinSi
		Escribir 'Desea hacer otra operacion 1.SI 2.NO'
		Leer SN
	Hasta Que SN='2'
	
FinAlgoritmo
