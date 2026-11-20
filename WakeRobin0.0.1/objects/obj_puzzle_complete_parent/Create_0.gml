done = false;
puzzle_id = "test";
layer_name = "puzzle_layer_" + puzzle_id;

function mark_as_complete( complete_Condition) {
	if (complete_Condition && !done) {
		done = true;
		layer_set_visible(layer_name, false);
	}
}