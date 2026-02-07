@echo off
if not exist "..\\docs" mkdir "..\\docs"

:: Loop through config entries
for /f "tokens=1,* delims==" %%A in (config.txt) do (
  set "MD=%%A"
  set "TITLE=%%B"
  pandoc "docs-src\\!MD!" -s -o "..\\docs\\!MD!.html"
)

:: Generate docs index
echo ^<html^>^<body^>^<h1^>Documentation^</h1^>^<ul^> > "..\\docs\\index.html"
for /f "tokens=1,* delims==" %%A in (config.txt) do (
  echo ^<li^>^<a href="%%A.html"^>%%B^</a^>^</li^> >> "..\\docs\\index.html"
)
echo ^</ul^>^</body^>^</html^> >> "..\\docs\\index.html"
