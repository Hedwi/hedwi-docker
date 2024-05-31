all:  compose-up

compose-up:
	docker-compose up -d


orb:
	docker compose up -d

cert:generate copy

generate:
	sh bin/cert.sh

copy:
	 \cp -f inbox/certs/cert.key nginx/certs/cert.key && \cp -f inbox/certs/cert.crt nginx/certs/cert.crt

stop:
	docker stop `docker ps -aq`
