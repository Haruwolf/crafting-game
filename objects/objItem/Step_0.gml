/// @description Insert description here
// You can write your code in this editor

if (!collected && place_meeting(x,y,objPlayer))  //caso não tenha sido coletado e o item entrou em contato com o player
{
	//Variavel que armazena a resposta da função de adicionar
	var added = adicionarInventario(type, 1);
	
	//Se o inventário permitiu, então vai poder coletar o item e seguirá o resto do script
	collected = added;
}

if (collected) //se a bool for verdadeira
{
	image_alpha -= 0.15; //diminui a transparencia da imagem
	y -= 0.5 //vai subindo ela
	
	if (image_alpha <= 0) //se for menor ou igual a 0, destrói o objeto.
	instance_destroy();
}

if (zAxis < 0) //caso o objeto ao ser criado pelo breakable não esteja no chão
{
	zGravity += 0.05; //vai aumentando a gravidade
	zAxis += zGravity; //vai aumentando ele no chão
	
	if (zAxis >= 0) //quando ele estiver no chão
	{
	zGravity = 0; //gravidade é zerada
	zAxis = 0; //ele estará no chão
	}
}

