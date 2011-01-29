require 'rubygems'
require 'sinatra'
require 'open-uri'
require 'json'

configure :production do
  # Configure stuff here you'll want to
  # only be run at Heroku at boot

  # TIP:  You can get you database information
  #       from ENV['DATABASE_URI'] (see /env route below)
end

get '/' do
  callback = params.delete('callback')
  url = params.delete('url')
  
  if url
    
    json = open(url).read.to_json
  
    if callback
      content_type :js
      response = "#{callback}(#{json})" 
    else
      content_type :json
      response = json
    end
    
  else
    response = 'no url'
  end  

  response

end