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

