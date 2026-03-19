@echo off
set /p msg="Enter commit message: "

:: Настройка Git для работы с большими файлами (увеличиваем буфер до 500МБ)
git config http.postBuffer 524288000

:: Добавление изменений
git add .

:: Коммит
git commit -m "%msg%"

:: Отправка
echo Pushing to remote...
git push

pause