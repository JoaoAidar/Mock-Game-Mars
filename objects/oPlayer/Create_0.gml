//Code made by AIDAR 
mySpeed = 5
inputPlayerA = false
inputPlayerD = false
inputPlayerS = false
inputPlayerW = false
visibleToEntities = true
myLife = 4
//move_outside_solid(direction, 32)

cooldownTimer = 0
cooldownTime = 60

function playerInput(){
	inputPlayerA = keyboard_check(ord("A"))
	inputPlayerD = keyboard_check(ord("D"))
	inputPlayerS = keyboard_check(ord("S"))
	inputPlayerW = keyboard_check(ord("W"))
}