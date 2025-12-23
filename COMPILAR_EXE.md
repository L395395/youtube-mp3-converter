# Compilar YouTube to MP3 como .EXE en Windows

Esta guía te ayudará a compilar la aplicación como un instalador `.exe` ejecutable en Windows.

## ✅ Requisitos Previos

Antes de comenzar, asegúrate de tener instalado:

### 1. Node.js
- Descarga desde: https://nodejs.org/
- Versión recomendada: LTS (18.x o superior)
- **Importante:** Marca la opción "Add to PATH" durante la instalación

### 2. Python
- Descarga desde: https://www.python.org/
- Versión recomendada: 3.9 o superior
- **Importante:** Marca la opción "Add Python to PATH" durante la instalación

### 3. FFmpeg
- Descarga desde: https://ffmpeg.org/download.html
- Sigue las instrucciones de instalación
- **Importante:** Agrega FFmpeg al PATH del sistema

### 4. Git (Opcional pero recomendado)
- Descarga desde: https://git-scm.com/

## 🚀 Pasos de Compilación

### Paso 1: Descargar el Código

```bash
# Si tienes Git:
git clone <url-del-repositorio>
cd youtube-mp3-web

# O si descargaste el archivo comprimido:
# Extrae youtube-mp3-web-backup.tar.gz
# Abre una terminal en la carpeta youtube-mp3-web
```

### Paso 2: Instalar Dependencias

Abre una terminal (CMD o PowerShell) en la carpeta del proyecto y ejecuta:

```bash
npm install
```

Esto instalará todas las dependencias necesarias de Node.js.

### Paso 3: Instalar Dependencias de Python

```bash
cd backend
python -m venv venv
venv\Scripts\activate  # En Windows
pip install -r requirements.txt
cd ..
```

### Paso 4: Compilar la Aplicación

Ejecuta uno de estos comandos:

**Opción A: Usar el script automático (Recomendado)**
```bash
BUILD_EXE.bat
```

**Opción B: Comandos manuales**
```bash
npm run build
npm run electron-build
```

### Paso 5: Esperar a que se Compile

El proceso de compilación puede tomar 5-10 minutos. Verás mensajes como:
```
Building for Windows...
Creating installer...
```

### Paso 6: Encontrar el Archivo .EXE

Una vez completado, encontrarás los archivos en la carpeta `dist`:

```
dist/
├── YouTube-to-MP3-Setup.exe      (Instalador con asistente)
└── YouTube-to-MP3-Portable.exe   (Ejecutable portátil)
```

## 📦 Tipos de Instaladores

### YouTube-to-MP3-Setup.exe
- **Tipo:** Instalador tradicional
- **Ventajas:**
  - Crea accesos directos en el escritorio
  - Agrega entrada en el menú Inicio
  - Fácil desinstalación
- **Desventajas:**
  - Requiere instalación
  - Ocupa más espacio en disco

### YouTube-to-MP3-Portable.exe
- **Tipo:** Ejecutable portátil
- **Ventajas:**
  - No requiere instalación
  - Se ejecuta desde cualquier ubicación
  - Fácil de transportar en USB
- **Desventajas:**
  - No crea accesos directos automáticamente

## 🔧 Solución de Problemas

### Error: "npm: No se reconoce como comando interno"
- **Solución:** Node.js no está en el PATH
- Reinstala Node.js y marca "Add to PATH"
- Reinicia la terminal después de instalar

### Error: "python: No se reconoce como comando interno"
- **Solución:** Python no está en el PATH
- Reinstala Python y marca "Add Python to PATH"
- Reinicia la terminal después de instalar

### Error: "ffmpeg: No se reconoce como comando interno"
- **Solución:** FFmpeg no está en el PATH
- Descarga FFmpeg y agrega su carpeta al PATH del sistema
- Reinicia la terminal después

### Error: "electron-builder: No se reconoce"
- **Solución:** Ejecuta `npm install` nuevamente
- Asegúrate de estar en la carpeta correcta del proyecto

### La compilación es muy lenta
- Esto es normal, puede tomar 5-10 minutos
- No cierres la terminal durante el proceso

### Error: "Cannot find module"
- **Solución:** Ejecuta `npm install` nuevamente
- Borra la carpeta `node_modules` y ejecuta `npm install`

## 📝 Después de Compilar

1. **Probar el instalador**
   - Ejecuta `YouTube-to-MP3-Setup.exe`
   - Sigue las instrucciones de instalación
   - Prueba la aplicación

2. **Distribuir**
   - Puedes compartir el archivo `.exe` con otros
   - No requieren instalar Node.js o Python

3. **Actualizar**
   - Para crear una nueva versión, repite los pasos 4-6

## 🎯 Comandos Útiles

```bash
# Limpiar y recompilar
npm run build

# Solo compilar Electron
npm run electron-build

# Ejecutar en modo desarrollo (requiere dos terminales)
# Terminal 1:
npm run dev

# Terminal 2:
npm run electron

# Limpiar archivos compilados
rmdir /s dist
rmdir /s electron
```

## 📊 Información de Compilación

- **Tamaño del instalador:** ~150-200 MB
- **Tamaño instalado:** ~300-400 MB
- **Tiempo de compilación:** 5-10 minutos
- **Requisitos de RAM:** 4 GB mínimo
- **Espacio en disco:** 1 GB para compilación

## ✅ Checklist de Compilación

- [ ] Node.js instalado y en PATH
- [ ] Python instalado y en PATH
- [ ] FFmpeg instalado y en PATH
- [ ] Carpeta del proyecto descargada
- [ ] `npm install` ejecutado
- [ ] `pip install -r requirements.txt` ejecutado
- [ ] `npm run build` completado
- [ ] `npm run electron-build` completado
- [ ] Archivos `.exe` encontrados en `dist/`
- [ ] Instalador probado en Windows

## 📞 Soporte

Si tienes problemas durante la compilación:

1. Verifica que todos los requisitos están instalados
2. Asegúrate de que están en el PATH
3. Intenta limpiar y recompilar
4. Consulta los logs de error en la terminal

---

**Última Actualización:** 23 de Diciembre de 2025
