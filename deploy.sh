#!/bin/bash
set -e
mvn clean package
./bees/bees app:deploy -a j2x/www target/java2xtend.webapp.war 
