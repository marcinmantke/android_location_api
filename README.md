# README

Temat: "Aplikacja umożliwiająca śledzenie swojego telefonu."

Wykorzystane elementy: komunikacja z API, zbieranie lokalizacji przy pomocy GPS
Opcjonalnie: zapisywanie lokalizacji w bazie SQLite w przypadku braku połączenia z siecią

Schemat działania:
1. Użytkownik musi się zarejestrować/zalogować w celu korzystania z aplikacji (komunikacja z API).
2. Aplikacja zbiera dane nt. jego lokalizacji (GPS)
3. Aplikacja, co pewien okres czasu, wysyła paczkę z lokalizacją użytkownika (API)
4. (Opcjonalnie) W przypadku braku połączenia z siecią Internet, dane z GPS są zapisywane w bazie SQLite (SQLite)
5. Użytkownik może zobaczyć historię swojej lokalizacji na mapie
