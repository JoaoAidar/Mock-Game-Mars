//Code made by AIDAR 
for(var i = 0; i < 10; i++){
	instance_create_depth(irandom_range(0,room_width),irandom_range(0,room_height),0, oRandomSmallObstacle)	
}

for(var i = 0; i < 10; i++){
	var newEnemy = instance_create_depth(irandom_range(0,room_width),irandom_range(0,room_height),0, oEnemyBasic)	
	with(newEnemy){
		//var randomDir = irandom_range(0,360)
		if(collision_circle(x,y,64,pCollidable,false,true)){
			x= irandom_range(0,room_width)	
		}
	}
}