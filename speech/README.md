### Google Speech API

* gem install
```
bundle install --path=vendor/bundle --binstubs=vendor/bin
```

* set key 		
main.rb and result.rb set your API key.

* set gs url		
main.rb l9 set gs.

* first

```
ruby main.rb
```
* rerurn
```
{
  "name": "token"
}

```

* second 
```
ruby result.rb token
```

* return
```
...
"results": [
      {
        "alternatives": [
          {
            "transcript": "Analysis result",
            "confidence": 0.9971655
          }
        ]
...
```


