class CaseFilesController < ApplicationController

    get '/case_files' do
        @case_files = CaseFile.all
        erb :'case_files/index'
    end

    get '/case_files/new' do 
        proc = Proc.new {

        erb :'case_files/new'

        }
        redirect_if_not_logged_in(proc)
    end

    post '/case_files' do 
        @case_file = CaseFile.new(params)
        @user = current_user
        @case_file.created_by = @user
        redirect "/case_files/#{@case_file.id}"

    end

    get '/case_file/:id' do
        @case_file = CaseFile.find(params[:id])
        erb :'case_files/show'
    end

end