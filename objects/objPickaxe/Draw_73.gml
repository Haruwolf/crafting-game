if (instance_exists(selectorInstance)) //Caso a instância exista (foi pega se o mouse ficou em cima do breakable)
{
	with(selectorInstance) //Com a instância dele fará
	{
		//desenha isso ai na tela
	draw_sprite_ext(sprSelector, other.selectorFrame, bbox_left, bbox_top,1,1,0,-1,1);
	draw_sprite_ext(sprSelector, other.selectorFrame, bbox_right, bbox_top, 1,1,-90,-1,1);
	draw_sprite_ext(sprSelector, other.selectorFrame, bbox_left, bbox_bottom, 1,1,90,-1,1);
	draw_sprite_ext(sprSelector, other.selectorFrame, bbox_right, bbox_bottom, 1,1,-180,-1,1);
	}
	
	//aumenta os frames, pois quando o sprite é desenhado, ele não se anima automatico
	selectorFrame += 0.15;
	//se a variavel passar do numero total de frames q tem o objeto, reseta
	if(selectorFrame >= selectorFrameNumber) selectorFrame -= selectorFrameNumber;
	
	//Limpa a instância, só que se o mouse continuar em cima do objeto, a instância sempre será preenchida
	//mas se o mouse sair da instância, ela já estará nula.
	selectorInstance = noone;
}