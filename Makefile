build:
	docker build . -t express -f Dockerfile
	docker build . -t express-mariner -f mariner.Dockerfile

run:
	docker run -p 3001:3000 express

run-mariner:
	docker run -p 3002:3000 express-mariner
