# slac-lab2-swift

docker build -t slac-lab2-swift .

docker run --rm slac-lab2-swift

For fun:
Map the local source code to container on the fly

docker run --rm -v $(pwd):/app -it swift

cd into app directory
  modify code in your local copy/editor
  
swift run
