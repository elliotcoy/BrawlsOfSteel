controllerNum = argument_count;
if(controllerNum>0)
{   controllerNum = argument[0];
}
if(keyboard_check_released(vk_space) or keyboard_check_released(vk_enter))
{
    if(controllerNum == 0)
    {
        return true;
    }
}
else if(gamepad_button_check_released(controllerNum,gp_face1))
{
    return true;
}
else
{
    return false;
}
