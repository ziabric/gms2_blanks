function existObjLeft(Obj1, Obj2, distance)
{
    var check_x = Obj1.x - distance
    var check_y = Obj1.y

    return instance_position(check_x, check_y, Obj2)
}

function existObjRight(Obj1, Obj2, distance)
{
    var check_x = Obj1.x + distance
    var check_y = Obj1.y

    return instance_position(check_x, check_y, Obj2)
}

function existObjUp(Obj1, Obj2, distance)
{
    var check_x = Obj1.x
    var check_y = Obj1.y - distance

    return instance_position(check_x, check_y, Obj2)
}

function existObjDown(Obj1, Obj2, distance)
{
    var check_x = Obj1.x
    var check_y = Obj1.y + distance

    return instance_position(check_x, check_y, Obj2)
}