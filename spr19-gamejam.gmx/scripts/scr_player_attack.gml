/// Player attack

// Variables
var stream = argument0; // projectiles per attack
var spread = argument1; // degrees between projectiles
var sp = argument2;
var speed_ = argument3;
var movement_ai = argument4;
var damage_ai = argument5;
var sprite_index_ = argument6;
var xscale = argument7;
var yscale = argument8;

// Generating projectiles
for (i = -1 * floor(stream / 2); i < ceil(stream / 2); i++) {
  bullet = instance_create(x, y, obj_template_projectile_1);
  bullet.color = 'w';
  bullet.sp = sp;
  bullet.speed = speed_;
  bullet.dummy_speed = speed_;
  bullet.movement_ai = movement_ai
  bullet.damage_ai =  damage_ai;
  bullet.sprite_index = sprite_index_;
  bullet.direction = direction + (spread * i);
  bullet.image_angle = direction + (spread * i) + 90;
  bullet.xscale = xscale;
  bullet.yscale = yscale;
}
