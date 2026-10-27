# 🪟 dotfiles

Mis dotfiles de Windows, gestionados con [chezmoi](https://www.chezmoi.io/).

> Para ver qué archivos incluye: `chezmoi managed`

## Restaurar tras formatear

En PowerShell:

    winget install twpayne.chezmoi Git.Git

Cerrá y abrí la terminal, y luego:

    git clone https://github.com/munozrc/dotfiles.git ~\Repos\personal\dotfiles
    chezmoi init --source ~\Repos\personal\dotfiles --apply

El archivo `.chezmoi.toml.tmpl` genera la configuración de chezmoi con el `sourceDir` correcto, así que no hay que crear nada a mano.

El `apply` también instala los programas de `packages/dev.json`.

## Uso diario

    chezmoi edit <archivo>   # editar un dotfile gestionado
    chezmoi diff             # ver diferencias
    chezmoi apply            # aplicar cambios al home
    chezmoi re-add           # traer al repo cambios hechos directo en el archivo real
    chezmoi cd               # entrar al repo para commit y push

## Pasos manuales

- Abrir KeePassXC y activar el agente SSH (OpenSSH for Windows).
- Extraer las `.pub` de cada entrada a `~\.ssh\`.
- Verificar con `ssh-add -l` y `ssh -T git@github.com-personal`.

## Instalar solo programas

    curl.exe -L -o personal.json https://raw.githubusercontent.com/munozrc/dotfiles/main/packages/personal.json; winget import -i personal.json --accept-package-agreements --accept-source-agreements

## Notas

Repo público: no se guardan tokens, claves ni credenciales.
