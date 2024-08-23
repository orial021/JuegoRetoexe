Para poder usar el API y por lo tanto correr la base de datos, es necesario que la computadora en la que se instale tenga python instalado y actualizado.


Para poder jugar el juego solo haga doble click en installer.bat y espere a que termine la instalacion.
installer.bat instala las dependencias y el entorno virtual para que se ejecute correctamente el API y la base de datos, el juego NO necesita instalacion.


Para iniciar el juego y el API se debe ejecutar el archivo JuegoReto.bat que aparece despues de la instalacion.


El juego esta hecho en godot engine, el API se hizo en python con fastapi y para la base de datos se uso SQLite para facilidad de contenerizacion, sim embargo esta lista la estructura para usarlo con mySQL, solo habria que cambiar el archivo api/.env y correr las migraciones.


AL iniciar la partida se pide el nombre de usuario, si se usa un nombre que nunca ha sido almacenado, automaticamente se creara uno nuevo.


Si no se otorga nombre de usuario antes de dar click al boton inicio, el juego iniciara sin guardar el avance en la base de datos.


El API guarda constantemente la salud y el puntaje del personaje, al cerrar el juego queda registrado en la base de datos, al volver a abrirlo e introducir el mismo nombre de usuario se accedera a los datos almacenados de dicho usuario.


Si se desea ver la documentacion del API, al ejecutar el archivo JuegoReto.bat por favor dirigirse a http://localhost:8000/docs en donde esta el API documentada usando OpenAPI.


El juego consta de dos pantallas, la pantalla de inicio en donde se pide los datos del jugador y la pantalla de juego.


No fue necesario el uso de ninguna libreria en godot, las librerias y dependencias usadas en fastAPI se pueden observar en api/requirements.txt