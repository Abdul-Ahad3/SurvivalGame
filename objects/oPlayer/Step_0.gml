var r = keyboard_check(vk_right);
var l = keyboard_check(vk_left);
var u = keyboard_check(vk_up);
var d = keyboard_check(vk_down);
var sp = keyboard_check(vk_space);

var inx = r - l;
var iny = d - u;

moveX = inx * 5;
moveY = iny * 5;

if(place_meeting(x + moveX, y, oWall) or place_meeting(x + moveX, y, oTree) or (bbox_left <= 0) or (bbox_right >= room_width)) {moveX = 0;}

if(place_meeting(x, y + moveY, oWall) or place_meeting(x, y + moveY, oTree) or (bbox_bottom >= room_height) or (bbox_top <= 0)) {moveY = 0;}

x += moveX;
y +=moveY;

if(moveX != 0 or moveY != 0){
	sprite_index = sPlayer_moving;
	
	if(moveX != 0)  image_xscale = -sign(moveX);
} else {
	sprite_index = sPlayer_idle;
}

if(sp){
	sprite_index = sPlayer_attack;
	if(place_meeting(x + (moveX * 8), y + (moveY * 8), oTree)){
		oTree.mask_index = -1;
		oTree.sprite_index = sEmpty;
	}
}