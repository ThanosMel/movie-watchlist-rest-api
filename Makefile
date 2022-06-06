# App targets
build-app:
	@docker build ../ -f ./Dockerfile -t watchlist-api --build-arg TZ=Europe/Athens
run-app:
	@docker run -d --name movie-watchlist-rest-api watchlist-api:latest
