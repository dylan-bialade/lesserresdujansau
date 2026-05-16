@echo off
:: Script de build pour Les Serres du Jansau
:: Double-cliquer pour générer le site

echo ============================================
echo   Les Serres du Jansau - Build Hugo
echo ============================================
echo.

:: Vérifier que Hugo est installé
hugo version >nul 2>&1
if errorlevel 1 (
    echo [ERREUR] Hugo n'est pas installe ou pas dans le PATH.
    echo.
    echo Telecharger Hugo sur : https://github.com/gohugoio/hugo/releases/latest
    echo Choisir : hugo_extended_X.X.X_windows-amd64.zip
    echo Extraire hugo.exe dans C:\Hugo\bin\ et ajouter au PATH.
    echo.
    pause
    exit /b 1
)

echo [OK] Hugo detecte
echo.

:: Nettoyer le dossier public
if exist "public\" (
    echo Nettoyage de l'ancien build...
    rmdir /s /q "public"
)

:: Build
echo Construction du site...
hugo --minify

if errorlevel 1 (
    echo.
    echo [ERREUR] La construction a echoue. Verifiez les erreurs ci-dessus.
    pause
    exit /b 1
)

echo.
echo ============================================
echo   Site genere avec succes dans public\
echo ============================================
echo.
echo Pour previsualiser : hugo server
echo Pour mettre en ligne : uploader le contenu de public\ sur votre serveur
echo.
pause
