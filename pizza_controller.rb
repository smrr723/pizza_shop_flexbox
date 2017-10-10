# HW - complete / pad out pizza shop and apply css to code.

require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )


require_relative './models/pizza'

get '/pizzas' do
  @pizzas = Pizza.all()
  erb( :index )
end

get '/pizzas/new' do
  erb( :new )
end

get '/pizzas/:id' do
  @pizza = Pizza.find(params['id'])
  erb( :show )
end

post '/pizzas' do
  @pizza = Pizza.new(params)
  @pizza.save()
  erb( :create )
end

get '/pizzas/:id/edit' do
  @pizza = Pizza.new(params)
  @pizza.update()
  erb( :edit )
end

get '/pizzas/:id/delete' do
  pizza = Pizza.find(params['id'])
  pizza.delete()
  erb( :delete )
end

# post 'pizzas/:id' do
#   @pizza.update()
# end


# get method for edit
# post method for update
