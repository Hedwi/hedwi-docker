all:  compose-up

compose-up:
	docker-compose up -d


orb:
	docker compose up -d

cert:generate copy


renew:
	sh bin/cert-renew.sh && \cp -f inbox/certs/cert.key nginx/certs/cert.key && \cp -f inbox/certs/cert.crt nginx/certs/cert.crt && \cp -f inbox/certs/cert.key smtp/certs/cert.key && \cp -f inbox/certs/cert.crt smtp/certs/cert.crt


generate:
	sh bin/cert.sh

copy:
	 \cp -f inbox/certs/cert.key nginx/certs/cert.key && \cp -f inbox/certs/cert.crt nginx/certs/cert.crt
	 \cp -f inbox/certs/cert.key smtp/certs/cert.key && \cp -f inbox/certs/cert.crt smtp/certs/cert.crt

stop: #docker stop `docker ps -aq`
	docker-compose down

down:
	docker-compose down

remove-image:
	sh bin/remove.sh

remove: down remove-image

upgrade: remove compose-up

update:
	sh bin/update.sh
