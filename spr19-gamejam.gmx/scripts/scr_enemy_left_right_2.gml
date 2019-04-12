/// scr_enemy_left_right_2
/* makes the enemy move left to right across the screen arbitrarily */

/**** HAS MOVEMENT BUG AT THE MOMENT ****/

speed = 0;

if (x > room_width - 64) and 
  not(collision_line(x, y, x + x_dist, y, obj_template_enemy_1, true, true))
  move_towards_point(0, y, speed);
      
else if (x < 64) and
  not(collision_line(x, y, x - x_dist, y, obj_template_enemy_1, true, true))
  move_towards_point(room_width, y, speed);
