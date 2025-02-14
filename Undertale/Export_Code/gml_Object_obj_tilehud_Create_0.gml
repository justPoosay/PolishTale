x = view_xview[0] + 210
y = view_yview[0] - 40
vspeed = 8
friction = 0.3
con = 0
if instance_exists(obj_multitileevent)
    time = obj_multitileevent.cooltimer
else
    time = 900
finished = false
orange = -1
