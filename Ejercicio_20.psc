Algoritmo Ejercicio_20
	Escribir 'Ingrese nombre'
	Leer nombre
	Escribir 'Ingrese apellido'
	Leer apellido
	Escribir 'Ingrese sueldo basico'
	Leer sueldobasico
	Escribir 'Ingrese antigüedad laboral'
	Leer antiguedad
	Si antiguedad<=3 Entonces
		sueldo=sueldobasico
		Escribir nombre,' ',apellido,' cobra $',sueldo,' posee ',antiguedad,' años de antigüedad'
	SiNo
		Si antiguedad>3 Entonces
			sueldo=sueldobasico+((sueldobasico*15)/100)
			Escribir nombre,' ',apellido,' cobra $',sueldo,' posee ',antiguedad,' años de antigüedad'
		SiNo
			Si antiguedad>6 Entonces
				sueldo=sueldobasico+((sueldobasico*30)/100)
				Escribir nombre,' ',apellido,' cobra $',sueldo,' posee ',antiguedad,' años de antigüedad'
			FinSi
		FinSi
	FinSi
FinAlgoritmo
