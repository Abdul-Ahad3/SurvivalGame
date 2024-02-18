upkey = keyboard_check(vk_up);
downkey = keyboard_check(vk_down);
rightkey = keyboard_check(vk_right);
leftkey = keyboard_check(vk_left);

if(upkey){
	y = y - 10;
}

if(downkey){
	y = y + 10;
}

if(rightkey){
	x = x + 10;
}

if(leftkey){
	x = x - 10;
}