# RAWR

## Get you some JSON
A simple Sinatra application that takes a url and callback (optional) parameter and returns the requested JSON.  
Perfect for rapidly building client-side js applications that utilize JSON data from external services.  
Plays nicely with jQuery's `$.getJSON()`.  
Also, set up to be easily deployed to [Heroku](http://heroku.com).

### Try it
[hit it on heroku](http://rawrjson.heroku.com/?url=http://twitter.com/status/user_timeline/tbeseda.json&callback=RAWR)

### TODO
* lots
* throttling
* better MIME type?