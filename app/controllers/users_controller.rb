class UsersController < ApplicationController

    get '/users' do 
        erb :'users/index'
    end

    get '/signup' do
        if logged_in?
            redirect '/'
        else
        erb :'users/signup'
        end
    end

    post '/signup' do 
        #binding.pry
      @user = User.new(params)
        if @user.save
            session[:user_id] = @user.id
            redirect "/users"
        else
            redirect '/signup'
        end
    end

    get '/login' do
        if logged_in?
            redirect "/" 
        else

        erb :'users/login'
        end
    end

    post '/login' do
        #binding.pry
         user = User.find_by(:username => params[:username])
         if !!(user && user.authenticate(params[:password]))
             session[:user_id] = user.id
             redirect "/"
         else
             redirect "/login"
         end
     end
 
     get '/logout' do
         session.clear
         redirect "/login"
     end

     get '/users/:slug/edit' do
        @user = User.find_by_slug(params[:slug])
        if current_user == @user
        erb :'users/edit'
        else
            redirect '/login'
        end
     end

      get '/users/:slug' do
        @user = User.find_by_slug(params[:slug])
        erb :'/users/show'
      end

      patch '/users/:slug' do
        @user = User.find_by_slug(params[:slug])
        @user.update(:username => params[:username], :email => params[:email], :password => params[:password], :is_military => params[:is_military], :is_law_enforcement => params[:is_law_enforcement])
        @user.save
        redirect "/users/#{@user.slug}"
      end
  

end