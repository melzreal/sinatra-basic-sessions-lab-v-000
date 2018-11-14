require_relative 'config/environment'

class App < Sinatra::Base

 configure do
   enable :sessions
   set :session_secret, "notsosecretsecret"
 end

  get '/' do
    erb :index
  end

  post '/checkout' do
<<<<<<< HEAD
    session[:item] = params[:item]
    @session = session
=======
    @cart[:item] = params[:item]
    @session = @cart
>>>>>>> 4c9dbe393c28d5759bf6594add8fb4166457b33f

    erb :checkout
  end
end
