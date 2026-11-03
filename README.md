# tekian.ar

Sitio estático de Tekian (HTML, CSS y JS). El contenido va en `public/`.

## Probar localmente

```bash
docker compose up --build
```

Queda disponible en http://localhost:3000. `public/` está montado como bind
mount, así que los cambios en los HTML se ven al recargar la página, sin
reconstruir la imagen.

## Deploy a tekian-server

```bash
./deploy.sh
```

Copia el contenido del repo a `~/tekian.ar` en `tekian-server` y asegura que el
contenedor esté corriendo. Los cambios en `public/` se reflejan al instante
gracias al bind mount. Queda disponible en http://192.168.1.127:3000.

Si cambiás `Dockerfile`, `nginx.conf` o `docker-compose.yml`, hace falta
reconstruir la imagen:

```bash
./deploy.sh --build
```
