# CarPool
Post a ride, and others can join you


<br>
Categories:- in the db ,using rails c (console)
short trip(<10)<br> 
medium trip()
long trip


How to make this in Rails:- <br>
cars controller <br>
car model <br>
cars controller + views -- new, edit, show, index, form -- bootstrap <br>
Helper methods in Job controller <br>
<ul>
  <li>def cars_params
		params.require(:car).permit(:title, :description, :owner, :price, :category_id)
  </li>
  <li>
	def find_car
		@car = Car.find(params[:id])
	</li>
</ul>

rails c commands to make the Categories --
Category.connection - to establish a connection <br>
Category.create(name: "Short Trip(<10 miles)") <br>
Category.create(name: "Medium Trip(<10 miles)") <br>
Category.create(name: "Long Trip(<10 miles)") <br>

change the form - 	= f.collection_select :category_id, Category.all, :id, :name, {promt: "Choose a category" }
cars params saves it to the db <br>
reload the console and then @car = Car.last -- would give you the category id <br>
Have to change the index method to filter by the categories <br>


