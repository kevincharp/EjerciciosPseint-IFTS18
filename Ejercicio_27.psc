Algoritmo Ejercicio_27
	Definir cuenta,saldo,retiro Como Entero
	cuenta=1000
	Escribir 'Bienvenido. Su saldo en cuenta es $1000 ¿Desea hacer un retiro? 1.SI 2.NO'
	Leer SN
	Repetir
		Si SN='2' Entonces
			Escribir 'Hasta luego'
		SiNo
			
			Repetir
				
				Si SN='1' Entonces
					Escribir '¿Cuanto dinero quiere retirar? Ingrese monto'
					Leer retiro
					Escribir '¿Confima transaccion? 1.SI 2:NO'
					Leer SN
					Si SN='1' Entonces
						saldo=cuenta-retiro
						Escribir 'Usted retiro $',retiro,' Su saldo en cuenta es $',saldo
					FinSi
					
					
				FinSi
				
				Escribir '¿Desea hacer otra operacion? 1.SI 2:NO'
				Leer SN
			Hasta Que SN='1'
		FinSi
		
	Hasta Que SN='2'
FinAlgoritmo
