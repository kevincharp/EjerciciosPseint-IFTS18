Algoritmo Ejercicio_19
	Repetir
		Escribir 'Ingrese primer numero'
		Leer num1
		Escribir 'Ingrese segundo numero'
		Leer num2
		Escribir 'Ingrese tercer numero'
		Leer num3
		
		Si num1=num2 y num1=num3 y num2=num3 Entonces
			Escribir num1,';',num2,';',num3 ' Son todos numeros iguales'
		SiNo
			Si num1<>num2 y num1<>num3 y num2<>num3 Entonces
				Escribir num1,';',num2,';',num3 ' Son todos numeros distintos'
			SiNo
				Si num1=num2 y num2<>num3 Entonces
					Escribir num1, ' y ', num2, ' Son numeros iguales y ' num3 ' es el numero distinto'
				SiNo
					Si num1<>num2 y num2=num3 Entonces
						Escribir num2, ' y ', num3, ' Son numeros iguales y ' num1 ' es el numero distinto'
					SiNo
						Si num1=num3 y num2<>num3 Entonces
							Escribir num1, ' y ',num3,' Son numeros iguales y ' num2 ' es el numero distinto'
						FinSi
					FinSi
				FinSi
			FinSi
		FinSi
		Escribir '¿Desea ingresar otros tres numeros? 1.SI 2.NO'
		Leer SN
	Hasta Que SN='2'
FinAlgoritmo
