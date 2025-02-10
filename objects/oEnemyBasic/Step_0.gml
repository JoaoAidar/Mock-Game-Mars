//Code made by AIDAR 
var _player = instance_nearest(x,y,oPlayer)
if(!instance_exists(_player)) exit;
if((distance_to_point(_player.x,_player.y) <= sightRadius) && _player.visibleToEntities) canSeePlayer = true else canSeePlayer = false
if(!canSeePlayer) exit;

directionToPlayer = point_direction(x,y,_player.x,_player.y)

x+=lengthdir_x(mySpeed,directionToPlayer)
y+=lengthdir_y(mySpeed,directionToPlayer)