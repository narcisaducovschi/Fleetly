# Contribuir a Fleetly

Normas de trabajo para mantener el repositorio ordenado entre los dos.

## Flujo de trabajo

1. Actualiza `main` antes de empezar nada nuevo:
   ```bash
   git checkout main
   git pull
   ```
2. Crea una rama a partir de `main`:
   ```bash
   git checkout -b feature/nombre-descriptivo
   ```
3. Trabaja con commits pequeños y frecuentes (ver convención más abajo).
4. Sube la rama y abre un Pull Request:
   ```bash
   git push -u origin feature/nombre-descriptivo
   ```
5. El otro revisa el PR antes de fusionar a `main`. Nunca se hace push directo a `main`.
6. Tras fusionar, borra la rama (local y remota) para mantener el repo limpio.

## Nombrado de ramas

| Prefijo | Uso |
|---|---|
| `feature/` | Funcionalidad nueva |
| `fix/` | Corrección de errores |
| `refactor/` | Reestructurar código sin cambiar comportamiento |
| `docs/` | Documentación |
| `css/` | Estilos |

Ejemplos: `feature/crud-vehiculos`, `fix/login-jwt-expira`, `docs/readme-instalacion`.

## Convención de commits

Formato: [Conventional Commits](https://www.conventionalcommits.org/).

```
tipo(scope): descripción corta en imperativo

- Detalle opcional en el cuerpo
- Otro detalle si hace falta
```

**Tipos:**

| Tipo | Cuándo usarlo |
|---|---|
| `feat` | Funcionalidad nueva |
| `fix` | Corrección de un error |
| `refactor` | Cambios de código sin alterar el comportamiento |
| `docs` | Documentación (README, comentarios extensos, este archivo) |
| `style` | Cambios de formato/CSS que no afectan a la lógica |
| `test` | Añadir o modificar pruebas |
| `chore` | Tareas de mantenimiento (dependencias, configuración) |

**Scopes habituales:** `erp`, `api`, `app`, `css`, `db`, `auth`, `controllers`.

**Ejemplos:**
```
feat(api): añadir endpoint de reporte diario con incidencias anidadas
fix(app): corregir cálculo de litros en el formulario de repostaje
refactor(controllers): extraer cálculo de salud a Libraries/SaludVehiculo
docs(readme): actualizar estructura de carpetas
```

## Reparto de responsabilidades

- **Narcis** — `Controllers/Erp`, vistas, mantenimiento, dashboard, ficha de salud.
- **Matias** — `Controllers/Api/V1`, autenticación JWT, app Android.
- **Models** y **Libraries** son compartidos: si tocas un modelo que usa el otro, avísalo antes de fusionar.

## Antes de abrir un Pull Request

- [ ] El código no rompe nada que ya funcionaba (probarlo en local)
- [ ] No se han subido archivos que deberían estar en `.gitignore`
- [ ] El mensaje de commit sigue la convención de arriba
- [ ] Si tocas algo compartido (`Models/`, `Libraries/`), lo has comentado con el otro

## Resolución de conflictos

Resuélvelos siempre en local, nunca desde el editor web de GitHub:

```bash
git checkout feature/tu-rama
git pull origin main
# resolver conflictos en el editor
git add .
git commit
git push
```