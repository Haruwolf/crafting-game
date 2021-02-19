// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function init(){
	
	//isso aqui fará o script iniciar antes de tudo
	gml_pragma("global", "init()");
	
	//itens que vão ter no jogo
	enum ITEM{
		APPLE,
		ORANGE,
		WOOD,
		STONE,
		IRON
	}
	

//os seguintes enums estão associados aos sprites
global.itemsprite[ITEM.APPLE] = sprApple;
global.itemsprite[ITEM.ORANGE] = sprOrange;
global.itemsprite[ITEM.WOOD] = sprWood;
global.itemsprite[ITEM.STONE] = sprStone;
global.itemsprite[ITEM.IRON] = sprIron;

//Macros servem para declarar uma variável que vai ser usada pelo resto do jogo
#macro INV_SIZE 16
}