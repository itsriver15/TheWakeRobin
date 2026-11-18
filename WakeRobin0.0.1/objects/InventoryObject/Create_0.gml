//Creating Construct 

function create_item(_id, _name, _description, _sprite) constructor
{
	id = _id;
	name = _name;
	description = _description;
	sprite = _sprite;
	
	
	
}


//creating the Items

//The Items will need sprites

global.items_list = 
{
	
	testItem : new create_item(
	1,
	"TestItem",
	"To test item",
	spr_test_item

	), 
	
	keyItem: new create_item(
	2,
	"Key",
	"Opens Doors",
	spr_key
	
	
	
	
	)
	
	
	




}

inv = array_create(0)



//
sep = 16;
screen_board = 16;