Algoritmo Ejercico_33
	Escribir 'Ingrese medida en metros a convertir'
	Leer metro
	Escribir 'Seleccione unidad de medida'
	Escribir '1.kilometros'
	Escribir '2.hectometro'
	Escribir '3.decamentro'
	Escribir '4.decimetro'
	Escribir '5.centimetro'
	Escribir '6.milimetro'
	Leer unidam
	Segun unidam Hacer
		1:
			Escribir metro*0.001,'km'
		2:
			Escribir metro*0.01,'hm'
		3:
			Escribir metro*0.1,'dam'
		4:
			Escribir metro*10,'dm'
		5:
			Escribir metro*100,'cm'
		6:
			Escribir metro*1000,'mm'
		
	Fin Segun
	
FinAlgoritmo
