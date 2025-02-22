class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/recipes' do

    erb :'index'
  end

  post '/recipes' do
    recipe = Recipe.new(params)
    recipe.save
    redirect "/recipes/#{recipe.id}"
  end

  patch '/recipes/:id' do
    @recipe = Recipe.find(params[:id])
    @recipe.update(name: params[:name], ingredients: params[:ingredients], cook_time: params[:cook_time])
    redirect "/recipes/#{recipe.id}"
  end

  get '/recipes/new' do
    
    erb :new
  end

  get '/recipes/:id' do
    @recipe = Recipe.find(params[:id])
    erb :'show'
  end

  get '/recipes/:id/edit' do
    @recipe = Recipe.find(params[:id])
    erb :'edit'
  end

  delete '/recipes/:id' do
    @recipe = Recipe.find(params[:id])
    @recipe.destroy

    redirect "/recipes"
  end
end
