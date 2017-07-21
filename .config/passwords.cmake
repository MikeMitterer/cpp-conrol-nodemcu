#
# Password dass für dieses Projekt verwendet wird
#
# Steps um zu verhindern dass das Kennwort eingechekt wird:
#
#   - passwords.cmake mit "dummy-Password" erstellen
#       (Beim Generieren durch CMake wird das File `src/config.h` erstellt)
#
#   - Check in der beiden Files (`passwords.cmake + config.h`)
#
#   - Hinzufügen der Files zu `.gitignore`:
#       (Nicht sicher ob das wirklich notwendig ist!)
#
#   .config/passwords.cmake
#   src/config.h
#
#   # De-Aktivieren
#   git update-index --assume-unchanged .config/passwords.cmake
#   git update-index --assume-unchanged src/config.h
#
#   # Aktivieren (sollte selten der Fall sein!)
#   git update-index --no-assume-unchanged .config/passwords.cmake
#
#   # Aktivieren von src/config.h - Fraglich ob das überhaupt irgendwann notwendig ist!
#   git update-index --no-assume-unchanged src/config.h
#


set (${PROJECT_NAME}_PASSWORD_LS "123")
set (${PROJECT_NAME}_PASSWORD_TPL "123")

# Variante über eine Environmentvariable
# set (${PROJECT_NAME}_PASSWORD $ENV{PATHWORD})

