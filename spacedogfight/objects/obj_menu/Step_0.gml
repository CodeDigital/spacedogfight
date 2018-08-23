
//Declares variable that moves mouse cursor
var move = 0;
move -= max(keyboard_check_pressed(vk_up),keyboard_check_pressed(ord("W")),0);
move += max(keyboard_check_pressed(vk_down),keyboard_check_pressed(ord("S")),0);

//Change mPos depending on Move
if (move != 0) {
	mPos += move;
	if (mPos < 0){
		mPos = array_length_1d(menu) - 1
	}else if(mPos > (array_length_1d(menu) - 1)){
		mPos = 0
	}
}

var push = max(keyboard_check_released(vk_enter), keyboard_check_released(vk_shift), keyboard_check_released(vk_space), 0);
if(push == 1) scr_menu();