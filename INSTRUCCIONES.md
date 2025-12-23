# YouTube to MP3 - Aplicación Web Funcional

Una aplicación web completa para descargar videos de YouTube en formato MP3.

## ✅ Estado Actual

- ✅ Frontend React completamente funcional
- ✅ Backend FastAPI con yt-dlp integrado
- ✅ Descarga de MP3 funcionando correctamente
- ✅ Selector de calidad de audio (128, 192, 320 kbps)
- ✅ Interfaz moderna con gradientes y animaciones
- ✅ Validación de URLs de YouTube
- ✅ Historial de descargas

## 🚀 Instalación Local

### Requisitos
- Python 3.9+
- Node.js 16+
- FFmpeg

### Paso 1: Instalar FFmpeg

**Ubuntu/Debian:**
```bash
sudo apt-get update
sudo apt-get install ffmpeg
```

**macOS:**
```bash
brew install ffmpeg
```

**Windows:**
Descargar desde https://ffmpeg.org/download.html

### Paso 2: Configurar Backend

```bash
cd backend
python3 -m venv venv
source venv/bin/activate  # En Windows: venv\Scripts\activate
pip install -r requirements.txt
python main.py
```

El backend estará en: `http://localhost:8000`

### Paso 3: Configurar Frontend

En otra terminal:

```bash
pnpm install
pnpm dev
```

El frontend estará en: `http://localhost:5173`

## 📝 Uso

1. Abre http://localhost:5173 en tu navegador
2. Pega una URL de YouTube
3. Selecciona la calidad de audio
4. Haz clic en "Download MP3"
5. El archivo se descargará automáticamente

## 🔧 Estructura del Proyecto

```
youtube-mp3-web/
├── src/                    # Frontend React
│   ├── App.tsx            # Componente principal
│   ├── App.css            # Estilos
│   ├── main.tsx           # Punto de entrada
│   └── index.css          # Estilos globales
├── backend/               # Backend FastAPI
│   ├── main.py           # API principal
│   ├── requirements.txt   # Dependencias Python
│   └── venv/             # Entorno virtual
├── package.json
├── vite.config.ts
└── README.md
```

## 📚 API Endpoints

- `POST /api/video-info` - Obtener información del video
- `POST /api/download` - Descargar video como MP3
- `GET /health` - Verificar estado del servidor

## ⚙️ Variables de Entorno

No se requieren variables de entorno. La aplicación funciona con configuración por defecto.

## 🐛 Solución de Problemas

### Error: "FFmpeg not found"
Asegúrate de que FFmpeg está instalado y en el PATH.

### Error: "failed to fetch"
Verifica que el backend está ejecutándose en `http://localhost:8000`

### Error: "Unable to download webpage"
YouTube puede estar bloqueando solicitudes. Espera unos minutos e intenta nuevamente.

## 📦 Despliegue

Para desplegar en Railway, Vercel o similar, necesitas:
1. Un repositorio en GitHub
2. Configurar variables de entorno si es necesario
3. Seguir las instrucciones de cada plataforma

## 📄 Licencia

Este proyecto es solo para propósitos educativos.
