global.StackSize = 10;       //Total amount of items that can go into a slot

function inv_add (Inv, Item, Amt){
	var NeedAdded = Amt;
	
	//Looking to see if you have the same item already in inventory, for stacking
	
	if Item.Stacks{                   //If the items stack Boolean variable is true
		for(var i = 0; i < array_length(Inv); i++) {
			if Inv[i] != -1{ //You do have the item
				if Inv[i][0].Name == Item.Name { //item has same name as name obtained from the current slot
					var canAdd = global.StackSize - Inv[i][1];  
					if canAdd < NeedAdded {
						//add some 
						NeedAdded -= canAdd;       //To add the amount that it currently has.  Like if you are adding 3 items to a slot that can hold 10
						Inv[i][1] = global.StackSize;
					} else {
						//Add the rest
						Inv[i][1] += NeedAdded;
						return;
					}
				}
			}
		}
	}
	
	// A new stack, like if you didnt have the item in inventory
	for(var i = 0; i < array_length(Inv); i++){
		if Inv[i] == -1 {                   // checks to see if the slot is empty
			if NeedAdded > global.StackSize {   //checks to see if the item amount you are adding is more than one stack can hold
				Inv[i] = [Item, 10];               //creates a full stack
				NeedAdded -= global.StackSize;     // subtracts the amount you just placed into a slut from the total amount of objects you had to put into the inventory 
			} else {
				Inv[i] = [Item, Amt];  //If items are not greater than what the stack can handle then it just adds that remaining number
				return;
			}
		}
	}
	return;
}

function inv_remove(Inv, Item, Amt){
	var NeedRemoved = Amt;     //Amount you want to remove, keeps track of how many items are left to remove.
	
	for(var i = 0; i < array_length(Inv); i++){
		if Inv[i] != -1 {      //If there is an empty slot
			if Inv[i][0].Name == Item.Name {
				var canRemove = Inv[i][1];
				if canRemove < NeedRemoved {     //if the total amount of item in a slot is less than the amount you wish to delete.
					NeedRemoved -= canRemove; //will subtract the amount in the current slot based on the amount you are trying to delete
					Inv[i] = -1;  //Making that slot empty to show that you have taken every amount of items in that slot out, letting it continue to the next slot that contains that item.
				} else {       //If the amount you wish to delete is lower than the total amount you have in a slot
					Inv[i][1] -= NeedRemoved; //subtracts the remaining amount from the current slot
					if Inv[i][1] <= 0 { Inv[i] = -1; } //If you removed the exact amount of items in a slot,  sets it to 0 and becomes an empty slot
					return;
				}
			
			}
		
		}
	
	}
	return;
}

