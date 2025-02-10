//Code made by AIDAR 
mySpeed = 5
inputPlayerA = false
inputPlayerD = false
inputPlayerS = false
inputPlayerW = false
visibleToEntities = true


function playerInput(){
	inputPlayerA = keyboard_check(ord("A"))
	inputPlayerD = keyboard_check(ord("D"))
	inputPlayerS = keyboard_check(ord("S"))
	inputPlayerW = keyboard_check(ord("W"))
}