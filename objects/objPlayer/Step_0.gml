/// @description Insert description here
// You can write your code in this editor

//Variavel que armazena uma booleana que checa se alguma tecla está pressionada
//keyboard_check(vk_???) para numérico keyboard_check(ord()) para teclas
right = keyboard_check(vk_right) or keyboard_check(ord("D"));
left = keyboard_check(vk_left) or keyboard_check(ord("A"));
down = keyboard_check(vk_down) or keyboard_check(ord("S"));
up = keyboard_check(vk_up) or keyboard_check(ord("W"));





//basicamente, se estiver a esquerda o valor vai ser -1 se for a direita +1
//o mesmo embaixo
moveX = right - left;
moveY = down - up;


//CollisionCheck
if (collision(x + moveX * movespeed, y)){
	while(!collision(x + sign(moveX * movespeed),y))
	x+= sign(moveX);
	
	moveX = 0;
}

if (collision(x, y + moveY * movespeed)){
	while(!collision(x, y + sign(moveY * movespeed)))
	y+= sign(moveY);
	
	moveY = 0;
}

	
	//show_debug_message("colidiu");
	
//X e Y é a posição do personagem
x += moveX * movespeed;
y += moveY * movespeed;



//Caso o X do personagem esteja sendo usado, irá flipar da forma adequada
//sign serve para retornar um valor de -1 para negativo ou 1 para positivo

face_pos = sign(mouse_x - x);
if (face_pos != 0)
image_xscale = face_pos;
//show_debug_message(face_pos);

//caso o personagem esteja se movimentando e seu eixo está positivo por exemplo, compara com o mouse
//caso o mouse esteja na direção oposta em que estiver andando, a velocidade estará negativa, caso contrário positiva.
if (moveX != 0 && sign (moveX) != face_pos)
image_speed = -1

else
image_speed = 1;


//caso algum dos dois seja diferente de 0 significa que o personagem está se movimentando
if (moveX != 0 or moveY != 0)
{
sprite_index = sprPlayerRun;

}

//se não estiver, está parado, sprite parado
//caso tenha mais mudanças de sprite usar o switch
else
sprite_index = sprPlayerIdle;


