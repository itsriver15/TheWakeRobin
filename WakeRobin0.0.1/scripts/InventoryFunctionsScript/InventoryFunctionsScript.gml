global.StackSize = 10;

function inv_add (Inv, Item, Amt){
	var NeedAdded = Amt;
	
	//Loking to see if you have the same item already in inventory, for stacking
	
	if Item.Stacks{
		for(var i = 0; i < array_length(Inv); i++) {
			if Inv[i] != -1{ //You do have the item
				if Inv[i][0].Name == Item.Name { //item has same name
					var canAdd = global.StackSize - Inv[i][1];
					if canAdd < NeedAdded {
						//add some 
						NeedAdded -= canAdd;
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
		if Inv[i] == -1 {
			if NeedAdded > global.StackSize {
				Inv[i] = [Item, 99];
				NeedAdded -= global.StackSize;
			} else {
				Inv[i] = [Item, Amt];
				return;
			}
		}
	}
	return;
}

function inv_remove(Inv, Item, Amt){
	var NeedRemoved = Amt;
	
	for(var i = 0; i < array_length(Inv); i++){
		if Inv[i] != -1 {
			if Inv[i][0].Name == Item.Name {
				var canRemove = Inv[i][1];
				if canRemove < NeedRemoved {
					NeedRemoved -= canRemove;
					Inv[i] = -1;
				} else {
					Inv[i][1] -= NeedRemoved;
					if Inv[i][1] <= 0 { Inv[i] = -1; }
					return;
				}
			
			}
		
		}
	
	}
	return;
}
