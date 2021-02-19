//Armazenam a posição do mouse no X e no Y
var mousePosx = device_mouse_x_to_gui(0);
var mousePosy = device_mouse_y_to_gui(0);

//Toggle no buttonhover, se a posição do mouse está em algum lugar dentro do botão
buttonHover = point_in_rectangle(mousePosx,mousePosy,x,y,x+buttonWidth, y+buttonHeight);

//Detecta quando tal botão foi apertado ou não
lClick = mouse_check_button_pressed(mb_left);
rClick = mouse_check_button_pressed(mb_right);