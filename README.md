# CarPool
Post a ride, and take others with you <br>

## Features
See the available car rides to destinations<br>
Choose a category for easier access to the trips <br>
Select a ride, and pay for it<br>
Create a ride, earn money, and make new friends<br>	

## How to make this in Rails:- <br>
cars controller <br>
car model <br>
cars controller + views -- new, edit, show, index, form -- bootstrap <br><br>

## Helper methods in Job controller <br>
<ul>
  <li>def cars_params
		params.require(:car).permit(:title, :description, :owner, :price, :category_id)
  </li>
  <li>
	def find_car
		@car = Car.find(params[:id])
	</li>
</ul>

## rails c (console) commands to make the Categories --
Category.connection - to establish a connection <br>
Category.create(name: "Short Trip(<10 miles)") <br>
Category.create(name: "Medium Trip(<10 miles)") <br>
Category.create(name: "Long Trip(<10 miles)") <br>

change the form - 	= f.collection_select :category_id, Category.all, :id, :name, {promt: "Choose a category" }
cars params saves it to the db <br>
reload the console and then @car = Car.last -- would give you the category id <br>
Have to change the index method to filter by the categories <br>


User login, sign up <br>
User is made with a Devise in rails <br>
Add it to the gemfile and bundle install<br>
rails g devise:install<br>
rails g devise:views<br>
rails g devise User<br>
rails db:migrate<br>


## More to implement, 
Like, share the ride <br>
Pay for the ride and book the seat<br>
