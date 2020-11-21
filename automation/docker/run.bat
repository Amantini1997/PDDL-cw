docker rm aipdocker
set /p version=< VERSION
docker run --name aipdocker -t aip:%version%