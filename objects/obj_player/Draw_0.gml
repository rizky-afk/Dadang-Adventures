/// @description
var anim_length = 9;
var frame_size = 64;
var anim_speed = 12;


switch (facing) {
case dir.left:		y_frame = 9;	break;
case dir.right:		y_frame = 11;	break;
case dir.up:		y_frame = 8;	break;
case dir.down:		y_frame = 10;	break;
case -1:			x_frame = 0;	break;
}

var xx = x-x_offset;
var yy = y-y_offset;

//Draw character shadow
if (spr_shadow != -1) draw_sprite(spr_character_shadow, 0, x,y);

//DRAW_CHARACTER_BASE
if (spr_base != -1) draw_sprite_part(spr_base, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx,yy);

//DRAW_CHARACTER_FEET
if (spr_feet != -1) draw_sprite_part(spr_feet, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx,yy);

//DRAW_CHARACTER_LEGS
if (spr_legs != -1) draw_sprite_part(spr_legs, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx,yy);

//DRAW_CHARACTER_SHIRT
if (spr_torso != -1) draw_sprite_part(spr_torso, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx,yy);

//DRAW_CHARACTER_HAIR
if (spr_hair != -1) draw_sprite_part(spr_hair, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx,yy);


//INCREMENT FRAME FOR ANIMATION
if(x_frame < anim_length -1) {x_frame += anim_speed/60; }
else						 {x_frame = 0;  }
