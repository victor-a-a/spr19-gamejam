/// scr_enemy_left_right_1
/* makes enemy move from left to right following player */

speed = 0;

if (obj_player.x - x > sp - 1) and 
  not(collision_line(x, y, x + x_dist, y, obj_template_enemy_1, true, true))
  x += sp * (30 / global.frames);
  
else if (x - obj_player.x > sp - 1) and
  not(collision_line(x, y, x - x_dist, y, obj_template_enemy_1, true, true))
  x -= sp * (30 / global.frames);
