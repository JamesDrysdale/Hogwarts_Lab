require('sinatra')
require('sinatra/contrib/all')
require_relative('models/student')
require_relative('models/house')
also_reload('./models/*')
require('pry')

# index

get '/students' do 
    @students = Student.all
    erb(:index)
end

# show

get '/students/:id' do
    @students = Student.find(params[:id])
    erb(:show)
end

# new

# create

# edit

# update

# destroy
