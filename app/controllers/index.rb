#CREATE-NEW
get '/' do
  redirect to "/categories"
end

#CREATE-NEW --AND-- #READ-INDEX
get '/categories/new' do
  @new_category = params[:new_category]
  @semua = Category.all
  erb :index
end

#READ-SHOW
get '/categories/:category_id' do
  @category = Category.find(params[:category_id])

  @posts = @category.posts
  erb :category_show
end

#CREATE-CREATE---
post '/categories' do
  new_category = Category.create(name: params[:new_category])
  redirect to "/categories/#{new_category.id}"
end

#READ-INDEX-----
get '/categories' do
  @semua = Category.all
  redirect to "/categories/new"
  # erb :category_all_show
end

#UPDATE-EDIT
get '/categories/:category_id/edit' do
  @category = Category.find params[:category_id]
  erb :category_edit
end

put '/categories/:c_id' do
  @category = Category.find params[:c_id]
  @category.update(params[:category])
  redirect "/categories/#{@category.id}"
end

# #DELETE---
delete '/categories/:c_id' do
  @category = Category.find params[:c_id]
  @category.delete
  redirect to "/categories/new"
end

