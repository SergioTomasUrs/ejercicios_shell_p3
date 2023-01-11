#!/bin/bash
echo "alu" | tr -d '\n' && echo $2 | cut -c 1-2 | tr '[:upper:]' '[:lower:]' | tr -d '\n' && echo $3 | cut -c 1-2 | tr '[:upper:]' '[:lower:]' | tr -d '\n' && echo $1 | cut -c 1 | tr '[:upper:]' '[:lower:]'

