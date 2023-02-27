#!/usr/bin/env sh
get reset --hard && git checkout $1 && git pull origin $1
echo "current branch $1"
flutter pub get
curl -s -H "Accept: application/json" -H "Content-Type: application/json" -X GET https://$2@api.doppler.com/v3/configs/config/secrets/download?format=env > .env
