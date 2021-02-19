
//Desenha o slot na tela
//O color vai ser c_navy enquanto o Hover acontecer, vai ser black quando o hover ocorrer
draw_set_color(buttonHover ? c_navy : c_black);
draw_set_alpha(0.4);
draw_rectangle(x,y,x+buttonWidth, y+buttonHeight,0);

//Desenhar o outline do retangulo
draw_set_alpha(1);
draw_set_color(c_white);
draw_rectangle(x,y,x+buttonWidth,y+buttonHeight,1);