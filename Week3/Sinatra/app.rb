require 'sinatra'
require 'shotgun'

set :session_secret, 'super secret'
# While this is very convenient for our development process,
# it might cause problems down the line with the way Sinatra secures session
# data (you will learn about this in a later challenge).
# To avoid this pitfall, we should add the line set :session_secret, 'super secret'
# to our app.rb file.

get '/' do
   "Hello everyone" "blaaaaah"
end

get '/cat' do
  "<div style='border: 3px dashed red'>
     <img src='http://bit.ly/1eze8aE'>
   </div>"
end
