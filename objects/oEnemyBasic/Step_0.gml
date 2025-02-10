//Code made by AIDAR 
var _player = instance_nearest(x,y,oPlayer)
if(!instance_exists(_player)) exit;
if((distance_to_point(_player.x,_player.y) <= sightRadius) && _player.visibleToEntities) canSeePlayer = true else canSeePlayer = false
if(!canSeePlayer) exit;

mp_potential_step_object(_player.x,_player.y,mySpeed,pCollidable)