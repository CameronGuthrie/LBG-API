#!/bin/bash
npm build
docker build -t proj:latest .

