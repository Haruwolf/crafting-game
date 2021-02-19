if (hp < maxhp) //caso o hp do objeto esteja menor que o hp maximo
{
	_y = bbox_bottom + 1; //pos onde vai criar o retangulo
	_amount = hp / maxhp; //para a health bar ir diminuindo
	_totalWidth = bbox_right - bbox_left; //pega o tamanho do colisor ao invés do tamanho do sprite em si
	
	draw_set_color(hpcolor); //cor da barrinha
	draw_rectangle(bbox_left, _y, bbox_left + _totalWidth * _amount, _y + hpHg,0) 
	//desenhe um retangulo (começando da barra lateral, na barra inferior + 1, que vai da barra lateral até a largura do sprite vezes o tanto de hp que tem, com a altura da barra inferior + a altura q vc quiser), sem outline
	
	//não vai ter cor
	draw_set_color(-1);
	draw_rectangle(bbox_left, _y, bbox_right,_y+hpHg,1);
	//desenhe um retângulo (da barra lateral, começando pela barra inferior, até a barra lateral direita, com a altura da barra inferior + a q vc quiser, com outline.)
	
	
}