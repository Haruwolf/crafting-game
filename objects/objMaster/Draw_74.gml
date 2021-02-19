//Quando o Step terminar, se pause existir e a imagem também, desenha ela na tela no lugar das instâncias
if (pause && surface_exists(pauseSurface))
{
	draw_surface_ext(pauseSurface,0,0,image_xscale,image_yscale,image_angle,c_gray,1);
	
}