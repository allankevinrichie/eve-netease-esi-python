curl -X POST -H "content-type:application/json" -d '{"options":  {"packageName": "eve_netease_api", "packageVersion": "${GITHUB_REF_NAME}"},"swaggerUrl":"https://ali-esi.evepc.163.com/latest/swagger.json"}' https://generator.swagger.io/api/gen/clients/python | grep -o '"link":"[^"]*' | cut -d '"' -f 4 | xargs wget -O eve_netease_api.zip && unzip ./eve_netease_api.zip
