/// scr_enemy_up_down_2
/* makes the enemy move up and down arbitrarily */

/**** NOTE THIS VERSION HAS A BUG INITIATING MOTION ****/

speed = 0;

if (y > room_height - 64) and 
  not(collision_line(x, y, x, y + y_dist, obj_template_enemy_1, true, true))
  move_towards_point(x, 0, speed);
      
else if (y < 64) and
  not(collision_line(x, y, x, y - y_dist, obj_template_enemy_1, true, true))
  move_towards_point(x, room_height, speed);
