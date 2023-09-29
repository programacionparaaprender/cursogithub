APACHE KAFKA
	INICIAR ZOOKEEPER (abir un cmd en la raiz de tu carpeta kafka y ejecutar el siguiente comando)
		.\bin\windows\zookeeper-server-start.bat .\config\zookeeper.properties
		
	INICIAR APACHE KAFKA (abir un nuevo cmd en la raiz de tu carpeta kafka y ejecutar el siguiente comando)
		.\bin\windows\kafka-server-start.bat .\config\server.properties
		
	LISTAR TOPICOS (abir un nuevo cmd en la raiz de tu carpeta kafka y ejecutar el siguiente comando)
		.\bin\windows\kafka-topics.bat --list --bootstrap-server  localhost:9092
		
	CREAR TOPICOS  (se puede ejecutar el siguiente comando en el cmd anterior)
		.\bin\windows\kafka-topics.bat --create --bootstrap-server localhost:9092 --replication-factor 1 --partitions 1 --topic testTopic
		.\bin\windows\kafka-topics.bat --create --bootstrap-server localhost:9092 --replication-factor 1 --partitions 1 --topic camel-demo
		.\bin\windows\kafka-topics.bat --create --bootstrap-server localhost:9092 --replication-factor 1 --partitions 1 --topic my-topic
		
	CREAR PRODUCTOR  (abir un nuevo cmd en la raiz de tu carpeta kafka y ejecutar el siguiente comando)
		.\bin\windows\kafka-console-producer.bat --broker-list localhost:9092 --topic testTopic
		.\bin\windows\kafka-console-producer.bat --broker-list localhost:9092 --topic camel-demo
	
	CREAR CONSUMIDOR  (abir un nuevo cmd en la raiz de tu carpeta kafka y ejecutar el siguiente comando)
		TE MUESTRA LOS MENSAJES DESDE EL MOMENTO EN EL QUE EJECUTAS EL COMANDO
		.\bin\windows\kafka-console-consumer.bat --bootstrap-server localhost:9092 --topic testTopic
		.\bin\windows\kafka-console-consumer.bat --bootstrap-server localhost:9092 --topic topic-test
		
		TE MUESTRA LOS MENSAJES DESDE EL INICIO
		.\bin\windows\kafka-console-consumer.bat --bootstrap-server localhost:9092 --topic testTopic --from-beginning
		.\bin\windows\kafka-console-consumer.bat --bootstrap-server localhost:9092 --topic my-topic --from-beginning
		.\bin\windows\kafka-console-consumer.bat --bootstrap-server localhost:9092 --topic topic-test --from-beginning
		.\bin\windows\kafka-console-consumer.bat --bootstrap-server localhost:9092 --topic camel-demo --from-beginning


	DESCRIPCION DEL TOPICO   (se puede ejecutar el siguiente comando en el tercer cmd abierto)
		.\bin\windows\kafka-topics.bat --describe --bootstrap-server localhost:9092 --topic testTopic
		.\bin\windows\kafka-topics.bat --describe --bootstrap-server localhost:9092 --topic camel-demo
	
	DETENER APACHE KAFKA
		.\bin\windows\kafka-server-stop.bat
		
	DETENER ZOOKEEPER
		.\bin\windows\zookeeper-server-stop.bat