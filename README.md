jmeter-plugins-slave docker images prepared to act as a JMeter slave node and comes with all the plugins available on JMeter plugin repository. 
Apart from that image supports customization of JMeter JVM Xms and Xmx memory allocation values.

------------


###  How to run the docker image

`Docker run -it gvasanka/jmeter-plugins-slave:5.1.1 slave-mode 1024m 1536m`

Container should be started as below
```bash
asankav$ Docker run -it gvasanka/jmeter-plugins-slave:5.1.1 slave-mode 1024m 1536m
Picked up _JAVA_OPTIONS: -Xms1024m -Xmx1536m
Using local port: 1099
Created remote object: UnicastServerRef2 [liveRef: [endpoint:[172.17.0.2:1099](local),objID:[1235a73:171df538d3b:-7fff, 4867503938583350769]]]
```


### Steps to build the docker image

Build the docker image with below command
 `docker build -t gvasanka/jmeter-plugins-slave .`

Search for the just build docker image and get IMAGE ID value
`docker images |grep gv`

Tag your docker image before pushing to the docker hub
  ` docker tag ce4e44d72afc  gvasanka/jmeter-plugins-slave:5.1.1`

Login to Docker Hub with your credentials
`Docker login -u gvasanka`

Finally push your docker image to docker hub
 `docker push gvasanka/jmeter-plugins:5.1.1`


