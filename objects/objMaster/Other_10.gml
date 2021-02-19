
//Margem lateral do inventário, espaço de um slot pro outro e tamanho do slot
var margin = 10;
var squareSpace = 1.1;
var cellSize = 96;

//Quantos slots vai ter o inventário
var sizeX = 8;
var sizeY = 2;

//Posição inicial de onde o inventário vai começar
var inventoryXpos = margin;
var inventoryYpos = 768 - (margin + squareSpace + cellSize * sizeY);

//Ao desenhar o slot na tela vai contando quantos já foram.
var lineCount = 0;
var rowCount = 0;

//Laço para preencher o inventário com botões
for (var i = 0; i <INV_SIZE;i++){
	
	//Posição do botão no inventário
	var buttonX = inventoryXpos + (squareSpace * cellSize) * lineCount;
	var buttonY = inventoryYpos + (squareSpace * cellSize) * rowCount;
	
	//Criar o botão em si na tela
	var button = instance_create_depth(buttonX, buttonY,0,objButtonInvent);
	
	//Com essa instância, vai alocar um id baseado no laço e vai dar a ele um tamanho especifico
	with (button){
		slotID = i;
		buttonWidth = cellSize;
		buttonHeight = cellSize;
	}
	
	//Aumenta o slot e vai pro próximo
	lineCount++;
	
	//Caso ele tenha chegado no limite da linha, ele cria uma nova coluna embaixo e zera a contagem, recomençando.
	if (lineCount == sizeX){
		lineCount = 0;
		rowCount++;
	}
}