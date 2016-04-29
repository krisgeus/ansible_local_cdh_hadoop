#!/usr/bin/env bash

# This file is placed by ansible.

SPARK_CLASSPATH=$(hadoop classpath)
SPARK_CLASSPATH=$SPARK_CLASSPATH:$HIVE_HOME/lib/*
SPARK_CLASSPATH=$SPARK_CLASSPATH:$HADOOP_PREFIX/share/hadoop/tools/lib/*