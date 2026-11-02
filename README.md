# tekian.ar

Sitio estático de Tekian (HTML, CSS y JS).

## Probar localmente

```bash
docker compose up --build
```

Queda disponible en http://localhost:3000.

## Deploy a tekian-server

```bash
./deploy.sh
```

Copia el contenido del repo a `~/tekian.ar` en `tekian-server`, reconstruye la
imagen y reinicia el contenedor. Queda disponible en http://192.168.1.127:3000.
