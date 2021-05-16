#!/bin/bash

sensors | grep Tdie | awk '{print $2}'
