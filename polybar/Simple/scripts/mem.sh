#!/bin/bash

free -h | grep Mem | awk '{print $3}'
