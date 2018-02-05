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
  "<div>
  <img src='http://f.cl.ly/items/0k0v3e2X3l2f3i1n1Y19/Screen%20Shot%202013-09-10%20at%2011.32.00.png'>
 </div>"
end
