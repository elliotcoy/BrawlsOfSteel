controllerNum = argument_count;
if(controllerNum>0)
{   controllerNum = argument[0];
}
if(keyboard_check_pressed(vk_up))
{
    if(controllerNum == 0)
    {
        return true;
    }
}
else if(gamepad_axis_value(controllerNum,gp_axislv)<-0.3 or gamepad_button_check_pressed(controllerNum,gp_padu))
{
    if(controllerDirection[controllerNum,1] > -0.25 or gamepad_button_check_pressed(controllerNum,gp_padu))
    {
        return true;
    }
}
else
{
    return false;
}
