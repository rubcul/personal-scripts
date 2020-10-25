Por favor, sigue los pasos. Esto cambia texto de prelogin.


1 - Copiar "prelogin.sh" en /etc/.
	cp prelogin.sh /etc/prelogin.sh

2 - Abrir terminal de comandos y poner: 
	sudo chmod +x /etc/prelogin.sh

Añadirlo a /etc/rc.local (puede que no exista rc.local) para ejecución en arranque.
3 - Realizar esto
	Opcion 1 - Si no existe rc.local:
			sudo cp rc.local /etc/rc.local
			sudo chmod +x rc.local

	Opcion 2 - Si ya existe rc.local, escribir esto dentro:
			/etc/prelogin.sh
		Y ejecutar esto
			sudo chmod +x rc.local
