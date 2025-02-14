dogcheck = 1
if (global.currentroom < room_area1)
    dogcheck = 0
if (global.currentroom > room_icecave1)
    dogcheck = 0
if (global.currentroom == room_castle_trueexit)
    dogcheck = 0
if (global.currentroom == room_outsideworld)
    dogcheck = 0
if (global.currentroom == room_undertale_end)
    dogcheck = 0
if (global.currentroom == room_tundra_sansroom)
    dogcheck = 0
if (global.currentroom == room_tundra_sansroom_dark)
    dogcheck = 0
if (global.currentroom == room_tundra_sansbasement)
    dogcheck = 0
if (dogcheck == 0)
    room_goto(room_of_dog)
