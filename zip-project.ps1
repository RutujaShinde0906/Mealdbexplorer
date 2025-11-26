# ---------------- Zip project ----------------
$root = "C:\Users\Rutuja\Desktop\TheMealDB-Explorer"
$backend = "$root\backend"
$frontend = "$root\frontend"

if (Test-Path "themealdb-explorer.zip") { Remove-Item "themealdb-explorer.zip" -Force }
Compress-Archive -Path $root -DestinationPath "themealdb-explorer.zip"

Write-Host "Project created at '$root' and zipped as 'themealdb-explorer.zip'"
Write-Host "Next steps:"
Write-Host "1) Backend: cd $backend; npm install; npm run dev"
Write-Host "2) Frontend: cd $frontend; npm install; npm run dev"
Write-Host "Open http://localhost:5173 in your browser."