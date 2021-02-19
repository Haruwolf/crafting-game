/// @description Insert description here
// You can write your code in this editor

// Vai pegar as informações que já existem
event_inherited();

//Pega a lista do inventario no objeto mestre
var invList = objMaster.inventario;

//Joga o slotID que está nesse botão na lista
var arrayList = invList[|slotID]

//Caso exista algo no inventário
if(is_array(arrayList))
{
	//Atribui a uma variável o primeiro valor do inventario (invList[item, count])
	var item = arrayList[0];
	
	//Pega o sprite global
	var spr = global.itemsprite[item];
	
	//Desenha no centro do botão
	draw_sprite_ext(spr,0,x+buttonWidth/2,y+buttonWidth/2,5,5,0,image_blend,image_alpha);
	
	//Atribui a contagem em uma variável
	var count = arrayList[1];
	
	//Printa na tela.
	draw_set_font(UIfont);
	draw_text(bbox_left + 4, bbox_top + 4, count);
}
