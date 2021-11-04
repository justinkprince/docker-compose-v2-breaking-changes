.PHONY: v2-new v2-old v1-new v1-old

v2-new:
	docker-compose enable-v2
	docker-compose -f ./docker-compose.good.yml run --rm good printenv

v2-old:
	docker-compose enable-v2
	docker-compose -f ./docker-compose.bad.yml run --rm bad printenv

v1-new:
	docker-compose disable-v2
	docker-compose -f ./docker-compose.good.yml run --rm good printenv

v1-old:
	docker-compose disable-v2
	docker-compose -f ./docker-compose.bad.yml run --rm bad printenv
