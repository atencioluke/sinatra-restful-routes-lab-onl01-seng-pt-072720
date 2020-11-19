class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get "/recipes" do
    @recipes = Recipe.all
    erb :"recipes/index"
  end

  post "/recipes" do
    
    # erb :"recipes/index"
  end

  get "/recipes/new" do
    erb :"recipes/new"
  end

  post "/recipes/:id" do
    @recipe = Recipe.find(params[:id])
    erb :"recipes/show"
  end

end
