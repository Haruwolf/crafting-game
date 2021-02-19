//Quando o jogador apertar a tecla ESC
if(keyboard_check_pressed(vk_escape))
{
	//O valor de pause se inverterá
	pause = !pause;
	
	//Se estiver pausado
		if (pause)
		{
			
			//Cria uma surface e faz uma foto do jogo nela, desativa as instâncias.
			pauseSurface = surface_create(1366,768);
			surface_copy(pauseSurface,0,0,application_surface);
			instance_deactivate_all(true);
			
			//O User event é algo que precisa ser chamado, quando estiver pausado chama ele
			event_user(0);
			
			
			
			
		}

	//Caso pause esteja desativado
		else
			
			//Se a imagem existir, deleta ela e ativa as instâncias
			if(surface_exists(pauseSurface))
			{
				//Quando não estiver, destrói o mesmo.
				event_user(1);
				instance_activate_all();
				surface_free(pauseSurface);
				
				
			}
			
}

