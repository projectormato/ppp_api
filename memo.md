curl -v -H "Accept: application/json" -H "Content-type: application/json" -X POST -d '{"use":{"first_name":"firstname","last_name":"lastname","email":"email@email.com","password":"app123","password_confirmation":"app123"}}'  http://localhost:3000/api/token

curl http://localhost:3000/api/token -X POST -H "Content-Type: application/json" -d '{"user": "value"}'

curl http://localhost:3000/api/token -X POST -H "Content-Type: application/json" -d '{"user":{"id":1,"token":"SKYWAYTOKEN","lesson":2}}'
