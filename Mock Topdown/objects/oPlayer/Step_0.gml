playerInput();

var hInput = inputPlayerD - inputPlayerA;
var vInput = inputPlayerS - inputPlayerW;

// Horizontal movement with collision
for (var i = 0; i < abs(hInput * mySpeed); i++) {
    var dir = sign(hInput);
    if (!instance_place(x + dir, y, pCollidable)) {
        x += dir;
    } else {
        break;
    }
}

// Vertical movement with collision
for (var i = 0; i < abs(vInput * mySpeed); i++) {
    var dir = sign(vInput);
    if (!instance_place(x, y + dir, pCollidable)) {
        y += dir;
    } else {
        break;
    }
}
cooldownTimer+=1


var nearestEnemy = instance_nearest(x,y,oEnemyBasic)

if(!instance_exists(nearestEnemy)) exit;

var distanceToEnemy = distance_to_object(nearestEnemy)

if(distanceToEnemy > 400) exit;
if(cooldownTimer >= cooldownTime)
{
	var bullet = instance_create_depth(x,y,depth,oSmallProjectile)
	var bulletDirection = point_direction(x,y,nearestEnemy.x,nearestEnemy.y)
	with(bullet){
		myDirection = bulletDirection
	}
	
	cooldownTimer = 0 
}