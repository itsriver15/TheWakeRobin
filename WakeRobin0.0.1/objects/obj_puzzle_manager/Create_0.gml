appeared = false;
layer_name = "puzzle_layer";

if (appeared) {
	instance_deactivate_all(true)
	layer_set_visible(layer_name, true)
} else {
	instance_activate_all(true)
	layer_set_visible(layer_name, false)
}