#!/usr/bin/env bash

# This file is placed by ansible.

SPARK_DIST_CLASSPATH=$(hadoop classpath)
SPARK_DIST_CLASSPATH=$SPARK_DIST_CLASSPATH:$HIVE_HOME/lib/*
SPARK_DIST_CLASSPATH=$SPARK_DIST_CLASSPATH:$HADOOP_PREFIX/share/hadoop/tools/lib/*