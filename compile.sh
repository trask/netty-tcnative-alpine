#!/bin/sh

git clone https://github.com/netty/netty-tcnative
cd netty-tcnative
git checkout tags/$NETTY_TCNATIVE_TAG
mvn clean package javadoc:jar -pl boringssl-static --am

mv boringssl-static/target/*.jar /output/
