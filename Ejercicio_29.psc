Algoritmo Ejercicio_29
	Escribir 'Seleccione figura a sacar su superficie'
	Escribir '1.Cuadrado'
	Escribir '2.Triangulo'
	Leer figura
	Si figura='1' Entonces
		Escribir 'Ingrese medida a utilizar 1.Centimetros 2.Metros'
		Leer medida
		Si medida='1'
			Escribir 'Ingrese base'
			Leer base
			Escribir 'Ingrese altura'
			Leer altura
			superf=base*altura
			Escribir 'La superficie del cuadrado es ',superf,' centimetros cuadrados'
		SiNo
			medida='2'
			Escribir 'Ingrese base'
			Leer base
			Escribir 'Ingrese altura'
			Leer altura
			superf=base*altura
			Escribir 'La superficie del cuadrado es ',superf,' metros cuadrados'
		FinSi
	SiNo
		Si figura='2' Entonces
		Escribir 'Ingrese medida a utilizar 1.Centimetros 2.Metros'
		Leer medida
		Si medida='1'
			Escribir 'Ingrese base'
			Leer base
			Escribir 'Ingrese altura'
			Leer altura
			superf=(base*altura)/2
			Escribir 'La superficie del triangulo es ',superf,' centimetros cuadrados'
		SiNo
			medida='2'
			Escribir 'Ingrese base'
			Leer base
			Escribir 'Ingrese altura'
			Leer altura
			superf=(base*altura)/2
			Escribir 'La superficie del triangul es ',superf,' metros cuadrados'
		FinSi
			
		FinSi
		
	FinSi
	
FinAlgoritmo
