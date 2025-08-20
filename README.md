## Mini App

Aplicación mínima Node.js + Express con configuración Docker y docker-compose.

### Rutas

- GET / -> Texto simple confirmando que el API está ejecutándose.
- GET /health -> JSON con estado y hora.

### Desarrollo (sin Docker)

1. Instalar dependencias: npm install
2. Iniciar en modo desarrollo: npm run dev
3. Abrir: http://localhost:3000

### Usando Docker

Construir y levantar contenedor:

```
docker compose up --build
```

Luego abrir: http://localhost:3000

### Estructura

```
Dockerfile
docker-compose.yml
index.js
package.json
.dockerignore
.gitignore
```

### Variables de Entorno

- PORT (opcional, por defecto 3000)
- NODE_ENV (development/production)

### Producción

```
docker build -t mini-app:prod .
docker run -d -p 3000:3000 --name mini-app mini-app:prod
```

### Licencia

MIT
