var r = keyboard_check(vk_right);
var l = keyboard_check(vk_left);
var u = keyboard_check(vk_up);
var d = keyboard_check(vk_down);

var inx = r - l;
var iny = d - u;

moveX = inx * 5;
moveY = iny * 5;

if(place_meeting(x + moveX, y, oWall) or (bbox_left <= 0) or (bbox_right >= room_width)) {moveX = 0;}

if(place_meeting(x, y + moveY, oWall) or (bbox_bottom >= room_height) or (bbox_top <= 0)) {moveY = 0;}

x += moveX;
y +=moveY;