#!/bin/bash

#Mocking a VCAP_APPLICATION, the values for this app really do not matter, its just a way to bootstrap springcloud
export VCAP_APPLICATION={"instance_id":"451f045fd16427bb99c895a2649b7b2a",
"instance_index":0,"host":"0.0.0.0","port":61857,"started_at":"2013-08-12
00:05:29 +0000","started_at_timestamp":1376265929,"start":"2013-08-12 00:05:29
+0000","state_timestamp":1376265929,"limits":{"mem":512,"disk":1024,"fds":16384}
,"application_version":"c1063c1c-40b9-434e-a797-db240b587d32","application_name"
:"styx-james","application_uris":["styx-james.a1-app.cf-app.com"],"version":"c10
63c1c-40b9-434e-a797-db240b587d32","name":"styx-james","uris":["styx-james.a1-ap
p.cf-app.com"],"users":null}

#With vcap_services we just point the URI to the proper kubernetes service

VCAP_SERVICES={"p-rabbitmq-3.2.4":[{"name":"retail-mq","label":"p-rabbitmq-3.2.4","tags":["rabbitmq","messaging","message-queue"],"plan":"standard","credentials":{"uri":"amqp://$RABBIT_SERVICE_HOST:$RABBIT_SERVICE_PORT}}]}

exec ${CATALINA_HOME}/bin/catalina.sh run
