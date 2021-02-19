


with (all) 
{//with (all) faz todas as instâncias do jogo rodarem o código abaixo, como se fosse um script desse pra cada um
depth = -bbox_bottom;

if (instance_exists(objPlayer) && objPlayer.held_item == id)
{
depth -= 20; //É como se fosse um foreach, quando ele achar o id do objeto, vai executar o código nele
//show_debug_message(id);
}
//aqui está falando que a parte embaixo de todos os colisores irão ficar para trás criando a seguinte situação:

}
//Caso o personagem esteja passando na frente de um colisor, sua top box ficara acima de bottombox do colisor.
//Caso o personagem esteja passando atrás de um colisor, sua bottombox estará passando por trás da topbox do colisor
// A top box dos objetos estará sempre acima da bottombox