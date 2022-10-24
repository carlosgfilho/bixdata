docker run --name mysql -v /home/bixdata/mysql/data:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=9ebm5uU2yMDX --network="host" --restart=always -d mysql:8.0.28
docker run -d -p 5006:3000 -e PORT=3000 -e PRINT_INTERFACE=tcp://192.168.1.230 --restart=always muriloflemos/atendimento:printer-service
docker run -d -p 5001:3000 -e PORT=3000 -e PRINT_INTERFACE=tcp://192.168.1.231 --restart=always muriloflemos/atendimento:printer-service
docker run -d -p 5002:3000 -e PORT=3000 -e PRINT_INTERFACE=tcp://192.168.6.251 --restart=always muriloflemos/atendimento:printer-service
docker run -d -p 5003:3000 -e PORT=3000 -e PRINT_INTERFACE=tcp://192.168.6.250 --restart=always muriloflemos/atendimento:printer-service
docker run -d -p 5004:3000 -e PORT=3000 -e PRINT_INTERFACE=tcp://192.168.103.240 --restart=always muriloflemos/atendimento:printer-service
docker run -d -p 5005:3000 -e PORT=3000 -e PRINT_INTERFACE=tcp://192.168.103.241 --restart=always muriloflemos/atendimento:printer-service
docker run -d -p 81:80 --restart=always muriloflemos/atendimento:frontend
docker run -d -p 80:80 --restart=always muriloflemos/atendimento:admin
docker run -d --network="host" --env DATABASE_URL='mysql://atendimento:Tejotao123!@127.0.0.1:3306/atendimento?schema=public' --env PORT=5000 --env TZ='America/Sao_Paulo' --restart=always muriloflemos/atendimento:backend

