class CaseFilesController < ApplicationController

    get '/case_files' do
        @case_files = CaseFile.all
        erb :'case_files/index'
    end
end