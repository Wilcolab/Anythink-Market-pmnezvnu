# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Item.delete_all
User.delete_all

tag = tag

for i in (1..100) do
  @user = User.new(:username => "user#{i}", :password => "user#{i}pass", :email => "user#{i}@mail.com")
  @user.save
  print(@user.errors.full_messages)
  print("user #{@user.id} created\n")
  @item = Item.new(:title => "New item #{i}", :description => "Description for New Item #{i}", :image => "https://img.lovepik.com/element/40078/7970.png_1200.png", :tag_list => [] )
  @item.user = @user
  @item.save
  print(@item.errors.full_messages)
  print("Item #{@item.id} created\n")
  @comment = @item.comments.new(:body => "Comment #{i}")
  @comment.user = @user
  @comment.save
  print(@comment.errors.full_messages)
  print("Comment #{@comment.id} created\n")
end
