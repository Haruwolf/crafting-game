// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function adicionarInventario(item, count){
	
	//Variaveis genéricas para receber valores a serem definidos.
	
	//Transforma a variável criada no objMaster em uma variável local.
	var lista = objMaster.inventario;
	
	//Pega o tamanho total que já está a lista
	var tamanhoLista = ds_list_size(lista);
	
	//Laço para varrer a lista
	for(i = 0;i<tamanhoLista;i++)
	{
		//Todo item da lista que for checado irá para uma variável, detalhe
		//a lista é um array que armazena o tipo do item e quantos ele tem.
		var itemAtual = lista[|i];
		
		//Caso o tipo de item seja igual com o do item que foi recebido
		//irá adicionar na contagem dele o valor que foi dado na lista
		if (itemAtual[0] == item)
		{
			//Depois de adicionar o item, sai da lista.
			itemAtual[@1] += count;
			//Após adicionar o item, significa que o mesmo foi adicionado, então True
			return true;
		}
	}
	
	//Caso a lista em si tenha mais itens do que deveria ter, ele não conseguiu coletar, então False
	if(tamanhoLista >= INV_SIZE)
	{
	return false;
	}
	
	//Após ele ter varrido a lista e não encontrou nada, ele entende que
	//o item não existe na lista, portanto o atribui para uma variável
	//e o adiciona na lista.
	
	//Conseguiu adicionar, True
	var itemAtual = [item, count];
	ds_list_add(lista, itemAtual);
	return true;

	

}