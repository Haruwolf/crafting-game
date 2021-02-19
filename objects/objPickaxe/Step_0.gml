/// @description Insert description here
// You can write your code in this editor


rotationn = lerp(rotationn, 40, 0.1); //a variavél em si vai ser a posição dela para o ponto final.
//se não tiver igual, a variável em si nunca vai fazer nada
image_angle = rotationn * objPlayer.face_pos;


mousePress = mouse_check_button(mb_left);

breakaway = instance_position(mouse_x, mouse_y, objBreakable); 
//instance position checa se a posição tá batendo com um objeto especifico e retorna o id
//exemplo: está checando se o mouse está por cima do objBreakable
//se estiver, vai retornar o id do objeto, se não estiver não consegue retornar

with (breakaway)
{
	distance = distance_to_object(objPlayer)
	
	if (distance < other.breakDistance) //Aparentemente o other vai servir para pegar uma variável que está fora do escopo, dentro do próprio evento
	{
		other.selectorInstance = id;
		if (other.cooldown == 0 && other.mousePress)
		{
		hp--;
		
		other.rotationn = -80;
		other.cooldown = 20;
	
		}
		
	}
		
}


if (cooldown > 0) cooldown--;