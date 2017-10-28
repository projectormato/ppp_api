# ppp
Perr to Peer by projectP のAPI

### POST /api/token
tokenを投げればペアになったtokenを返してくれます。<br>

```json
{
	"user":
		{
			"id":"userId",
			"token":"自分のSkyWayToken",
			"lesson":"lessonId"
		}
}
```
みたいなJsonを期待してます。<br>
例：<br>
curl http://localhost:3000/api/token -X POST -H "Content-Type: application/json" -d '{"user":{"id":1,"token":"SKYWAYTOKEN","lesson":2}}'

出力は、
```json
{
  "result":"相手のSkyWayToken"
}
```
がペアになった時だけ返ります。<br>
ポーリングしてくれると助かります。ペアがあとから誕生したらそれを返します。<br>
動作確認：<br>
curl http://localhost:3000/api/token -X POST -H "Content-Type: application/json" -d '{"user":{"id":1,"token":"SKYWAYTOKEN1","lesson":2}}'<br>
curl http://localhost:3000/api/token -X POST -H "Content-Type: application/json" -d '{"user":{"id":2,"token":"SKYWAYTOKEN2","lesson":2}}'<br>
curl http://localhost:3000/api/token -X POST -H "Content-Type: application/json" -d '{"user":{"id":1,"token":"SKYWAYTOKEN1","lesson":2}}'<br>
こんな感じで２つめと３つめのアクセスでそれぞれ相手のtokenが返ります。




