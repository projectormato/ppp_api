# ppp
Perr to Peer by projectP のAPI

### POST /api/token
token投げればペアになったtokenを返してくれます。<br>

```json
{
	"user":
		{
			"id":"userId",
			"token":"SkyWayToken",
			"lesson":"lessonId"
		}
}
```
みたいなJsonを期待してます。<br>
例：<br>
curl http://localhost:3000/api/token -X POST -H "Content-Type: application/json" -d '{"user":{"id":1,"token":"SKYWAYTOKEN","lesson":2}}'



