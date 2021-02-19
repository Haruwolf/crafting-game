// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function collision(_x, _y){

	//aparentemente qndo vc seta algum objeto pra ser parent, os child objects pegam todas as referencias do pai
	//por isso a colisão funciona no obj tree e objbush
	return place_meeting(_x,_y,objWall);
	

}