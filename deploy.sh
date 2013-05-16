#!/bin/bash
set -e
mvn install -f ../java2xtend/pom.xml
mvn clean package
./bees/bees app:deploy -a j2x/www target/java2xtend.webapp.war 
