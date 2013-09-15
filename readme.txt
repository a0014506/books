***Model***

Users (belongs_to link)
	This has database of users, including "id", "name", "link_id", "comment".
	"link_id" means the link where a user is now.
	"comment" means the condition of the link where a user is now.
	(For example, "Good", "Bad")
	http://localhost:3000/users can be shown the overview.

Links (has_many user shop)
	This has database of links, including only "id".
	"link" means the part of road like the picture of "http://localhost:3000/links".
	The table of "http://localhost:3000/links" is related to "Users" about "Name" and "Comment".

Shops (belongs_to link)
	This has database of shops, including "name", "link_id", "offer".
	"link_id" means the link where a shop exists.
	"offer" would be get by the user who entered "comment" which would be useful information for other users.

***The way to try***
	Please go to http://localhost:3000/serch which is top view.
		If you are new user and click "New User", you would be registered.
		In case you enter some comment, you would be get some offeres from shops around you.
		
		If you are existing user and enter your User ID, your information would be shown.
		After that, if you go to the link "Edit", you can edit your information.
		Also if you enter comment, you can get some offeres.
		
	
	Please go to http://localhost:3000/links which is the Map View.
		Below the map, the table shows the relation of "Links" and "Users".
		Its key is "Link_id".
		This table shows that each link has the users. 


*****Additional Function For Task3*****
Ajax
	Please go to http://localhost:3000/shops which is the Shops Overview.
	If you click "Show" of each shop, its specific information would be shown without transition.


REST API
	Add Data
		Please go to the overview page ("http://localhost:3000/users").
		Please put "curl -d "user[comment] = Good&name[link_id] = 4&user[name] = Yoshida" http://localhost:3000/users.json
		If you reflesh the overview page, the new data you put above would be shown.
	Delete Data
		Please go to the overview page ("http://localhost:3000/users").
		Please put "curl -X DELETE http://localhost:3000/usres/12.json (id = 12,last data)
		If you reflesh the overview page, the last data would be removed.
Tests
	The rspec code is written in "\spec\views\users\show.html.erb_spec.rb"
	In this test, I would like to check if there is no comment of user "Offers" wouldn't be shown.
	Please put "rspec .\spec\views\users\show.html.erb_spec.rb" and confirm there is no error.
	
	 


