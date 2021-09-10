Algoritmo Ejercicio_13
	Escribir "Tipo de triangulo segun sus lados"
	Escribir "Ingrese medida del primer lado del triángulo"
	Leer lad1
	Escribir "Ingrese medida del segundo lado del triangulo"
	Leer lad2
	Escribir "Ingrese medida del tercer lado del triangulo'
	Leer lad3
	Si lad1=lad2 y lad1=lad3 y lad2=lad3 Entonces 
		Escribir "Su triangulo es equilatero"
	SiNo 
		Si (lad1=lad2) o (lad1=lad3) o (lad2=lad3)
			Escribir "Su triangulo es isoceles"
		SiNo
			Si (lad1<>lad2) o (lad1<>lad3) o (lad2<>lad3)
			Escribir "Su triangulo es escaleno"
		FinSi
	FinSi
	FinSi
FinAlgoritmo

