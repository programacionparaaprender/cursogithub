docker build -t eureka-server-example .
docker run eureka-server-example -d -p 8765 ip
docker run -d -p 192.168.0.10:8765:8765 -ti eureka-server-example -name eureka-server-example

asignar un puerto y un properties



docker build -t eureka-server-example .
docker run -d -p 192.168.0.10:8761:8761 -ti eureka-server-example -name eureka-server-example