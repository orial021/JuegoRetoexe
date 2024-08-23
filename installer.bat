@echo off

REM Cambiar al directorio de la API
cd api

REM Crear un nuevo entorno virtual
python -m venv venv

REM Activar el entorno virtual
call venv\Scripts\activate

REM Actualizar pip
python -m pip install --upgrade pip

REM Instalar las dependencias
pip3 install tortoise-orm aerich
pip3 install -r requirements.txt

REM Conectar con la base de datos
aerich init -t tortoise_conf.TORTOISE_ORM
aerich init-db
aerich migrate
aerich upgrade

REM Volver al directorio raíz
echo Volviendo al directorio raíz...
cd .. || (echo Error: No se pudo volver al directorio raíz & exit /b)

REM Crear el ejecutable del juego
echo REM entra a la carpeta de juego > JuegoReto.bat
echo cd api >> JuegoReto.bat

echo REM ejecutar el .exe del juego >> JuegoReto.bat
echo echo iniciando el juego... >> JuegoReto.bat
echo start JuegoReto.exe ^|^| (echo Error: no se pudo iniciar el juego) >> JuegoReto.bat

echo REM Iniciar el servidor FastAPI >> JuegoReto.bat
echo call venv\Scripts\activate >> JuegoReto.bat
echo fastapi dev >> JuegoReto.bat
