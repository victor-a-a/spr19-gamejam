/// scr_enemy_up_down_1
/* makes the enemy move up and down following the player */

speed = 0;

if (obj_player.y - y > sp - 1) and 
  not(collision_line(x, y, x, y + y_dist, obj_template_enemy_1, true, true))
  y += sp * (30 / global.frames);

else if (y - obj_player.y > sp - 1) and
  not(collision_line(x, y, x, y - y_dist, obj_template_enemy_1, true, true))
  y -= sp * (30 / global.frames);
