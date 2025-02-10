//Code made by AIDAR 
// Create Event
// Initialize camera
cam = camera_create();

// Set camera size to match viewport (default zoom)
camera_set_view_size(cam, view_get_wport(0), view_get_hport(0));

// Assign this camera to view 0
view_set_camera(0, cam);

// Target to follow (e.g., player)
target = instance_find(oPlayer, 0);

// Camera follow parameters
follow_speed = 0.1; // 0 = no movement, 1 = instant
zoom_level = 1; // Current zoom (1 = default)
target_zoom = zoom_level; // Target zoom for smooth transitions
zoom_speed = 0.1; // Zoom interpolation speed

// Camera boundaries (set to room size by default)
boundary_left = 0;
boundary_right = room_width;
boundary_top = 0;
boundary_bottom = room_height;