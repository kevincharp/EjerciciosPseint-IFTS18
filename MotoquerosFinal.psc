Algoritmo MotoquerosFinal
	// Variables fijas transportistas y destinos
	transportista1=' Roberto '
	transportista2=' Chuck Norris '
	transportista3=' Neo '
	destino1=' El Puente de Broocklyn'
	destino2=' La Matrix '
	//Variables credito Neo
	creditoNeo<-5
	creditoNeo=creditoNeo+creditocarga
	creditoviaje<-1
	// Variable precios
	precioRobertoCamion=1500
	precioRobertoBici=500
	precioChuck=2000
	precioNeo=5000
	
	Definir destino Como Entero
	Definir PesoPaquete Como Entero
	Definir SN Como Entero
	
	Escribir '*********Bienvenidos a MotoquerosDePeliculas.SA*********'
	Escribir 'Nuestros envios se pueden realizar solo a dos destinos'
	Escribir 'El Puente de Brookling o La Matrix'
	Escribir 'Contamos con tres transportistas:'
	Escribir '1.Roberto 2.Chuck Norris 3.Neo'
	Escribir 'A continuacion detallamos los valores de los transportistas'
	Escribir 'Roberto en camion $1500 (paquetes superiores a los 40kg)'
	Escribir 'Roberto en bicicleta $500 (paquetes hasta 40kg)'
	Escribir 'Chuck $2000 (paquetes hasta 100kg solo en Puente de Brooklyng / En La Matrix sin limite de peso /credito de llamada sin costo)'
	Escribir 'Neo $5000 (paquetes hasta 1000kg en Puente de Brooklyng / En La Matrix sin limite de peso / tiene recargo de $1 por cada llamada/viaje)'
	Escribir 'Credito de Neo $5 al dia de hoy'
	Escribir 'Nuestro programa evaluara segun el peso del paquete que transportista'
	Escribir 'está disponible como tambien en el destino que puede entregarse y el costo final del envio'
	
	Repetir
		Repetir
			Escribir 'Ingrese peso del paquete en kilogramos'
			Leer PesoPaquete
			Repetir
				Si PesoPaquete>1000 Entonces //Si el paquete supera los 1000kg el unico destino posible es La Matrix
					destino=2
					Escribir 'Su paquete supera los 1000 solo se puede enviar a La Matrix'
					Escribir '¿Confirma envio? 1.Si 2.No'
					Leer SN
					Segun SN
						1: SN=1
						2: SN=2
							Escribir 'Nuevamente'
						De Otro Modo:
							Escribir 'Opcion seleccionada es invalida'
					FinSegun
				SiNo 
					Si PesoPaquete<=1000 // Si el paquete es menor o igual a 1000kg se le ofrecen ambos destinos
						Repetir
							Escribir 'Ingrese destino'
							Escribir '1.',destino1,' 2.',destino2
							Leer destino
							Segun destino
								1: destino=destino
									Escribir '¿Confirma envio? 1.Si 2.No'
									Leer SN
									Segun SN
										1: SN=1
										2: SN=2
											
											
										De Otro Modo:
											Escribir 'Opcion seleccionada es invalida'
									FinSegun
								2: destino=destino
									Escribir '¿Confirma envio? 1.Si 2.No'
									Leer SN
									Segun SN
										1: SN=1
										2: SN=2
											
										De Otro Modo:
											Escribir 'Opcion seleccionada es invalida'
									FinSegun
								De Otro Modo:
									Escribir 'Opcion seleccionada es invalida'
							FinSegun
						Hasta Que SN=1 
					FinSi
				FinSi
			Hasta Que destino=1 o destino=2
		Hasta Que SN=1
		// Segun destino ingresado a partir de la linea 29 se le ofrece al usuario segun el PesoPaquete los correspondientes transportistas
		Segun destino Hacer
			1://Destino El Puente de Brooklyng
				Escribir 'Destino del paquete',destino1
				Si PesoPaquete=100
					Repetir
						Escribir 'Seleccione transportista'
						Escribir '1.Roberto 2.Chuck Norris 3.Neo'
						Leer transportista
						Segun transportista Hacer
							1://Roberto
								Escribir 'El paquete de ',PesoPaquete,' kilogramos sera entregado por',transportista1,'en camion en',destino1
								Escribir 'Costo final:$',precioRobertoCamion
								
							2://Chuck Norris
								Escribir 'El paquete de ',PesoPaquete,' kilogramos sera entregado por',transportista2,'en',destino1
								Escribir'Costo final:$',precioChuck
								
							3://Neo
								Si creditoNeo>0 Entonces
									creditoNeo=creditoNeo-creditoviaje
									Escribir 'El paquete de ',PesoPaquete,' kilogramos sera entregado por',transportista3,'en',destino1
									Escribir 'Credito actualizado $',creditoNeo
									Escribir 'Costo final:$',(precioNeo+creditoviaje)
								SiNo
									Si creditoNeo=0 Entonces
										Escribir 'Neo ya no tiene credito para realizar llamadas ¿Desea recargar credito? 1.Si 2.No'
										Leer SN
										Segun SN Hacer
											1:
												Escribir 'Ingrese credito a recargar'
												Leer creditocarga
												creditoNeo=creditoNeo+creditocarga
												Escribir 'Neo ahora tiene $',creditoNeo,' de credito'
												Escribir '¿Confirma envio? 1.Si 2.No'
												Leer SN 
												Segun SN Hacer
													1:
														creditoNeo=creditoNeo-creditoviaje
														Escribir 'El paquete de ',PesoPaquete,' kilogramos sera entregado por',transportista3,'en',destino1
														Escribir 'Credito actualizado $',creditoNeo
														Escribir 'Costo final:$',(precioNeo+creditoviaje)
													2:
														creditoNeo=creditoNeo-creditocarga
														Repetir
															Escribir 'Seleccione transportista disponible'
															Escribir '1.Roberto 2.Chuck Norris'
															Leer transportista
															Segun transportista Hacer
																1:
																	Escribir 'El paquete de ',PesoPaquete,' kilogramos sera entregado por',transportista1,'en',destino1
																	Escribir 'Costo final:$',precioChuck
																2:
																	Escribir 'El paquete de ',PesoPaquete,' kilogramos sera entregado por',transportista2,'en',destino1
																	Escribir 'Costo final:$',precioChuck
																De Otro Modo:
																	Escribir 'Opcion seleccionada es invalida'													
															FinSegun
														Hasta Que transportista=1 o transportista=2
														
												FinSegun
											2:
												Repetir
													Escribir 'Seleccione transportista disponible'
													Escribir '1.Roberto 2.Chuck Norris'
													Leer transportista
													Segun transportista Hacer
														1:
															Escribir 'El paquete de ',PesoPaquete,' kilogramos sera entregado por',transportista1,'en',destino1
															Escribir 'Costo final:$',precioChuck
														2:
															Escribir 'El paquete de ',PesoPaquete,' kilogramos sera entregado por',transportista2,'en',destino1
															Escribir 'Costo final:$',precioChuck
														De Otro Modo:
															Escribir 'Opcion seleccionada es invalida'													
													FinSegun
												Hasta Que transportista=1 o transportista=2
											De Otro Modo:
												Escribir 'Opcion seleccionada es invalida'
										FinSegun
									FinSi
								FinSi
							De Otro Modo:
								Escribir 'Opcion seleccionada es invalida'
						FinSegun
					Hasta Que transportista=1 o transportista=2 o transportista=3
				SiNo
					Si PesoPaquete>100 y PesoPaquete<=420
						Repetir
							Escribir 'Seleccione transportista'
							Escribir '1.Roberto 2.Neo'
							Leer transportista
							Segun transportista Hacer
								1://Roberto
									Escribir 'El paquete de ',PesoPaquete,' kilogramos sera entregado por',transportista1,'en camion en',destino1
									Escribir 'Costo final:$',precioRobertoCamion
								2://Neo
									Si creditoNeo>0 Entonces
										creditoNeo=creditoNeo-creditoviaje
										Escribir 'El paquete de ',PesoPaquete,' kilogramos sera entregado por',transportista3,'en',destino1
										Escribir 'Credito actualizado $',creditoNeo
										Escribir 'Costo final:$',(precioNeo+creditoviaje)
									SiNo
										Si creditoNeo=0 Entonces
											Escribir 'Neo ya no tiene credito para realizar llamadas ¿Desea recargar credito? 1.Si 2.No'
											Leer SN
											Segun SN Hacer
												1:
													Escribir 'Ingrese credito a recargar'
													Leer creditocarga
													creditoNeo=creditoNeo+creditocarga
													Escribir 'Neo ahora tiene $',creditoNeo,' de credito'
													Escribir '¿Confirma envio? 1.Si 2.No'
													Leer SN 
													Segun SN
														1:
															creditoNeo=creditoNeo-creditoviaje
															Escribir 'El paquete de ',PesoPaquete,' kilogramos sera entregado por',transportista3,'en',destino1
															Escribir 'Credito actualizado $',creditoNeo
															Escribir 'Costo final:$',(precioNeo+creditoviaje)
														2:
															creditoNeo=creditoNeo-creditocarga
															Repetir
																Escribir 'Seleccione transportista disponible'
																Escribir '1.Roberto'
																Leer transportista
																Segun transportista Hacer
																	1:
																		Escribir 'El paquete de ',PesoPaquete,' kilogramos sera entregado por',transportista1,'en camion en',destino1
																		Escribir 'Costo final:$',precioRobertoCamion
																	De Otro Modo:
																		Escribir 'Opcion seleccionada es invalida'													
																FinSegun
															Hasta Que transportista=1 o transportista=2
													FinSegun
												2:
													Repetir
														Escribir 'Seleccione transportista disponible'
														Escribir '1.Roberto'
														Leer transportista
														Segun transportista Hacer
															1:
																Escribir 'El paquete de ',PesoPaquete,' kilogramos sera entregado por',transportista1,'en camion en',destino1
																Escribir 'Costo final:$',precioRobertoCamion
															De Otro Modo:
																Escribir 'Opcion seleccionada es invalida'													
														FinSegun
													Hasta Que transportista=1 o transportista=2
													
												De Otro Modo:
													Escribir 'Opcion seleccionada es invalida'
											Fin Segun
										FinSi
									FinSi
								De Otro Modo:
									Escribir 'Opcion seleccionada es invalida'
							FinSegun
						Hasta Que transportista=1 o transportista=2
						
					SiNo
						Si PesoPaquete<100 y PesoPaquete>40
							Repetir
								Escribir 'Seleccione transportista'
								Escribir '1.Roberto 2.Chuck Norris 3.Neo'
								Leer transportista
								Segun transportista Hacer
									1://Roberto
										Escribir 'El paquete de ',PesoPaquete,' kilogramos sera entregado por',transportista1,'en camion en',destino1
									2://Chuck Norris
										Escribir 'El paquete de ',PesoPaquete,' kilogramos sera entregado por',transportista2,'en',destino1
									3://Neo
										Si creditoNeo>0 Entonces
											creditoNeo=creditoNeo-creditoviaje
											Escribir 'El paquete de ',PesoPaquete,' kilogramos sera entregado por',transportista3,'en',destino1
											Escribir 'Credito actualizado $',creditoNeo
											Escribir 'Costo final:$',(precioNeo+creditoviaje)
										SiNo
											Si creditoNeo=0 Entonces
												Escribir 'Neo ya no tiene credito para realizar llamadas ¿Desea recargar credito? 1.Si 2.No'
												Leer SN
												Segun SN Hacer
													1:
														Escribir 'Ingrese credito a recargar'
														Leer creditocarga
														creditoNeo=creditoNeo+creditocarga
														Escribir 'Neo ahora tiene $',creditoNeo,' de credito'
														Escribir '¿Confirma envio? 1.Si 2.No'
														Leer SN 
														Segun SN Hacer
															1:
																creditoNeo=creditoNeo-creditoviaje
																Escribir 'El paquete de ',PesoPaquete,' kilogramos sera entregado por',transportista3,'en',destino1
																Escribir 'Credito actualizado $',creditoNeo
																Escribir 'Costo final:$',(precioNeo+creditoviaje)
															2:
																creditoNeo=creditoNeo-creditocarga
																Repetir
																	Escribir 'Seleccione transportista disponible'
																	Escribir '1.Roberto 2.Chuck Norris'
																	Leer transportista
																	Segun transportista Hacer
																		1:
																			Escribir 'El paquete de ',PesoPaquete,' kilogramos sera entregado por',transportista1,'en',destino1
																			Escribir 'Costo final:$',precioChuck
																		2:
																			Escribir 'El paquete de ',PesoPaquete,' kilogramos sera entregado por',transportista2,'en',destino1
																			Escribir 'Costo final:$',precioChuck
																		De Otro Modo:
																			Escribir 'Opcion seleccionada es invalida'													
																	FinSegun
																Hasta Que transportista=1 o transportista=2
																
														FinSegun
													2:
														Repetir
															Escribir 'Seleccione transportista disponible'
															Escribir '1.Roberto 2.Chuck Norris'
															Leer transportista
															Segun transportista Hacer
																1:
																	Escribir 'El paquete de ',PesoPaquete,' kilogramos sera entregado por',transportista1,'en',destino1
																	Escribir 'Costo final:$',precioChuck
																2:
																	Escribir 'El paquete de ',PesoPaquete,' kilogramos sera entregado por',transportista2,'en',destino1
																	Escribir 'Costo final:$',precioChuck
																De Otro Modo:
																	Escribir 'Opcion seleccionada es invalida'													
															FinSegun
														Hasta Que transportista=1 o transportista=2
														
													De Otro Modo:
														transportista=0
														Escribir 'Opcion seleccionada es invalida'
												Fin Segun
											FinSi
										FinSi
										
									De Otro Modo:
										Escribir 'Opcion seleccionada es invalida'
								FinSegun
							Hasta Que transportista=1 o transportista=2 o transportista=3
						SiNo
							Si PesoPaquete<=40
								Repetir
									Escribir 'Seleccione transportista'
									Escribir '1.Roberto 2.Chuck Norris 3.Neo'
									Leer transportista
									Segun transportista Hacer
										1://Roberto
											Escribir 'El paquete de ',PesoPaquete,' kilogramos sera entregado por',transportista1,'en bicleta en',destino1
											Escribir 'Felicitaciones Roberto bajo 2 kilogramos de grasa corporal'
											Escribir 'Costo final:$',precioRobertoBici
										2://Chuck Norris
											Escribir 'El paquete de ',PesoPaquete,' kilogramos sera entregado por',transportista2,'en',destino1
											Escribir 'Costo final:$',precioChuck
										3://Neo
											Si creditoNeo>0 Entonces
												creditoNeo=creditoNeo-creditoviaje
												Escribir 'El paquete de ',PesoPaquete,' kilogramos sera entregado por',transportista3,'en',destino1
												Escribir 'Credito actualizado $',creditoNeo
												Escribir 'Costo final:$',(precioNeo+creditoviaje)
											SiNo
												Si creditoNeo=0 Entonces
													Escribir 'Neo ya no tiene credito para realizar llamadas ¿Desea recargar credito? 1.Si 2.No'
													Leer SN
													Segun SN Hacer
														1:
															Escribir 'Ingrese credito a recargar'
															Leer creditocarga
															creditoNeo=creditoNeo+creditocarga
															Escribir 'Neo ahora tiene $',creditoNeo,' de credito'
															Escribir '¿Confirma envio? 1.Si 2.No'
															Leer SN 
															Segun SN Hacer
																1:
																	creditoNeo=creditoNeo-creditoviaje
																	Escribir 'El paquete de ',PesoPaquete,' kilogramos sera entregado por',transportista3,'en',destino1
																	Escribir 'Credito actualizado $',creditoNeo
																	Escribir 'Costo final:$',(precioNeo+creditoviaje)
																2:
																	creditoNeo=creditoNeo-creditocarga
																	Repetir
																		Escribir 'Seleccione transportista disponible'
																		Escribir '1.Roberto 2.Chuck Norris'
																		Leer transportista
																		Segun transportista Hacer
																			1:
																				Escribir 'El paquete de ',PesoPaquete,' kilogramos sera entregado por',transportista1,'en bicicleta en',destino1
																				Escribir 'Costo final:$',precioRobertoBici
																			2:
																				Escribir 'El paquete de ',PesoPaquete,' kilogramos sera entregado por',transportista2,'en',destino1
																				Escribir 'Costo final:$',precioChuck
																			De Otro Modo:
																				Escribir 'Opcion seleccionada es invalida'													
																		FinSegun
																	Hasta Que transportista=1 o transportista=2
																	
															FinSegun
														2:
															Escribir 'Seleccione transportista disponibles'
															Escribir '1.Roberto 2.Chuck Norris'
															Leer transportista
															Segun transportista Hacer
																1://Roberto
																	Escribir 'El paquete de ',PesoPaquete,' kilogramos sera entregado por',transportista1,'en bicleta en',destino1
																	Escribir 'Felicitaciones Roberto bajo 2 kilogramos de grasa corporal'
																	Escribir 'Costo final:$',precioRobertoBici
																2://Chuck Norris
																	Escribir 'El paquete de ',PesoPaquete,' kilogramos sera entregado por',transportista2,'en',destino1
																	Escribir 'Costo final:$',precioChuck
																De Otro Modo:
																	Escribir 'Opcion seleccionada es invalida'
															FinSegun
														De Otro Modo:
															Escribir 'Opcion seleccionada es invalida'
													Fin Segun
												FinSi
											FinSi
											
										De Otro Modo:
											Escribir 'Opcion seleccionada es invalida'
									FinSegun
								Hasta Que transportista=1 o transportista=2 o transportista=3
							SiNo
								Si PesoPaquete<=1000 y PesoPaquete>420
									Repetir
										Escribir 'Este paquete solo puede ser entregado por Neo'
										Escribir 'Seleccione transportista'
										Escribir '1.Neo'
										Leer transportista
										Segun transportista Hacer
											1://Neo
												Si creditoNeo>0 Entonces
													creditoNeo=creditoNeo-creditoviaje
													Escribir 'El paquete de ',PesoPaquete,' kilogramos sera entregado por',transportista3,'en',destino1
													Escribir 'Credito actualizado $',creditoNeo
													Escribir 'Costo final:$',(precioNeo+creditoviaje)
												SiNo
													Si creditoNeo=0 Entonces
														Escribir 'Neo ya no tiene credito para realizar llamadas ¿Desea recargar credito? 1.Si 2.No'
														Leer SN
														Segun SN Hacer
															1:
																Escribir 'Ingrese credito a recargar'
																Leer creditocarga
																creditoNeo=creditoNeo+creditocarga
																Escribir 'Neo ahora tiene $',creditoNeo,' de credito'
																Escribir '¿Confirma envio? 1.Si 2.No'
																Leer SN 
																Si SN=1 Entonces
																	creditoNeo=creditoNeo-creditoviaje
																	Escribir 'El paquete de ',PesoPaquete,' kilogramos sera entregado por',transportista3,'en',destino1
																	Escribir 'Credito actualizado $',creditoNeo
																	Escribir 'Costo final:$',(precioNeo+creditoviaje)
																SiNo
																	SN=2 
																	Escribir 'Envio no realizado'
																	creditoNeo=creditoNeo-creditocarga
																FinSi
															2:
																Escribir 'Imposible entregar paquete'
																transportista=0
															De Otro Modo:
																transportista=0
																Escribir 'Opcion seleccionada es invalida'
														Fin Segun
													FinSi
												FinSi
											De Otro Modo:
												Escribir 'Opcion seleccionada es invalida'
										FinSegun
									Hasta Que transportista=1
									
								FinSi
							FinSi
						FinSi
					FinSi
				FinSi
			2:// Destino La Matrix
				Escribir 'Destino del paquete',destino2
				Repetir
					Escribir 'Seleccione transportista'
					Escribir '1.Chuck Norris 2.Neo'
					Leer transportista
					Segun transportista Hacer
						1://Chuck Norris
							Escribir 'El paquete de ',PesoPaquete,' kilogramos sera entregado por',transportista2,'en',destino2
						2://Neo
							Si creditoNeo>0 Entonces
								creditoNeo=creditoNeo-creditoviaje
								Escribir 'El paquete de ',PesoPaquete,' kilogramos sera entregado por',transportista3,'en',destino1
								Escribir 'Credito actualizado $',creditoNeo
								Escribir 'Costo final:$',(precioNeo+creditoviaje)
							SiNo
								Si creditoNeo=0 Entonces
									Escribir 'Neo ya no tiene credito para realizar llamadas ¿Desea recargar credito? 1.Si 2.No'
									Leer SN
									Segun SN Hacer
										1:
											Escribir 'Ingrese credito a recargar'
											Leer creditocarga
											creditoNeo=creditoNeo+creditocarga
											Escribir 'Neo ahora tiene $',creditoNeo,' de credito'
											Escribir '¿Confirma envio? 1.Si 2.No'
											Leer SN 
											Segun SN Hacer
												1:
													creditoNeo=creditoNeo-creditoviaje
													Escribir 'El paquete de ',PesoPaquete,' kilogramos sera entregado por',transportista3,'en',destino1
													Escribir 'Credito actualizado $',creditoNeo
													Escribir 'Costo final:$',(precioNeo+creditoviaje)
												2:
													creditoNeo=creditoNeo-creditocarga
													Repetir
														Escribir 'Seleccione transportista disponible'
														Escribir '1.Chuck Norris'
														Leer transportista
														Segun transportista Hacer
															1:
																Escribir 'El paquete de ',PesoPaquete,' kilogramos sera entregado por',transportista2,'en',destino1
																Escribir 'Costo final:$',precioChuck
															De Otro Modo:
																Escribir 'Opcion seleccionada es invalida'													
														FinSegun
													Hasta Que transportista=1
													
											FinSegun
										2:
											Repetir
												Escribir 'Seleccione transportista disponible'
												Escribir '1.Chuck Norris'
												Leer transportista
												Segun transportista Hacer
													1:
														Escribir 'El paquete de ',PesoPaquete,' kilogramos sera entregado por',transportista2,'en',destino1
														Escribir 'Costo final:$',precioChuck
													De Otro Modo:
														Escribir 'Opcion seleccionada es invalida'													
												FinSegun
											Hasta Que transportista=1
											
											
										De Otro Modo:
											Escribir 'Opcion seleccionada es invalida'
									Fin Segun
								FinSi
							FinSi	
						De Otro Modo:
							Escribir 'Opcion seleccionada es invalida'
					FinSegun
				Hasta Que transportista=1 o transportista=2
				
			De Otro Modo:
				Escribir 'Opcion seleccionada es invalida'
		FinSegun
		Escribir '¿Desea hacer otro envio? 1.Si 2.No'
		Leer SN
		
	Hasta Que SN>=2 
FinAlgoritmo

