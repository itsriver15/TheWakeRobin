event_inherited()

var _frame = obj_puzzle_frame;



//Incorrect:
//Have the Entire UI move side to side and the frame flash red
function Incorrect() {
	//maybe implement a fade effect??
	_frame.image_blend = c_red
	call_later(3, time_source_units_seconds, function() {
		_frame.image_blend = c_white
	});
}
//Correct:
//Turn the frame flex panel green then call the complete function
//after 3 seconds, making the puzzle dissappear
function Correct() {
	//maybe implement a fade effect??
	_frame.image_blend = c_green
	call_later(3, time_source_units_seconds, function() {
		_frame.image_blend = c_white
		mark_as_complete(true);
	});
}

