if (hp <= 0)
{
	instance_destroy(); //destruir o objeto
	var resourceAmount = choose (1,1,1,1,2,2,3); //para escolher quantos recursos irão dropar
	var resMax = array_length(droppedResource); //armazena o tamanho do array que foi inicializado no create.

	repeat(resourceAmount) //irá ser feito dependendo de quantos recursos foram dropados
	{
		var resource = irandom(resMax - 1); //vai escolher qual resource vai pegar do array
		var pickedResource = droppedResource[resource];
		//para pegar de vez, vai consultar o array e vai pegar com base na numeração randomizada o "ITEM"
		
		var _x = x +irandom_range(-4,4); //posição que ele vai dropar
		var _y = y +irandom_range(-4,4);
		
		var resourceInstance = instance_create_layer(_x, _y, "instances",objItem);
		//vai criar um objeto para armazenar o novo item e vai criar um objItem
		
		with (resourceInstance) //vai pegar a instância ou as instâncias que foram criadas
		{
			type = pickedResource; //vai setar o tipo do item para o escolhido do array lá em cima
			sprite_index = global.itemsprite[pickedResource]; //vai setar o sprite dele baseado no que foi declarado, usando qual objeto foi escolhido.
			//é como se ele tivesse fazendo isso: "sprite_index = global.itemsprite[ITEM.APPLE]
			
			zAxis = -other.sprite_height / 2
			
		}
	}
}
