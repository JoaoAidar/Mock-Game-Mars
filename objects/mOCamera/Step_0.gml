//Code made by AIDAR 
// Step Event
// Update zoom smoothly
zoom_level = lerp(zoom_level, target_zoom, zoom_speed);
var _viewport_w = view_get_wport(0);
var _viewport_h = view_get_hport(0);
camera_set_view_size(cam, _viewport_w / zoom_level, _viewport_h / zoom_level);

// Follow target if it exists
if (target != noone) {
    // Get target position and center the camera
    var _cam_w = camera_get_view_width(cam);
    var _cam_h = camera_get_view_height(cam);
    var _desired_x = target.x - _cam_w / 2;
    var _desired_y = target.y - _cam_h / 2;

    // Smoothly interpolate position
    var _current_x = camera_get_view_x(cam);
    var _current_y = camera_get_view_y(cam);
    var _new_x = lerp(_current_x, _desired_x, follow_speed);
    var _new_y = lerp(_current_y, _desired_y, follow_speed);

    // Clamp to boundaries
    _new_x = clamp(_new_x, boundary_left, boundary_right - _cam_w);
    _new_y = clamp(_new_y, boundary_top, boundary_bottom - _cam_h);

    // Update camera position
    camera_set_view_pos(cam, _new_x, _new_y);
}