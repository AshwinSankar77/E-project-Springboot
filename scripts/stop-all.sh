#!/bin/bash
echo "Stopping all microservices and containers..."
docker-compose -f ../Docker-Compose.yml down