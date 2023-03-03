extends Node2D

var teste = false
var valor = 0
var numero = 0 #Não pode conter acento em nome de variável
var lista = [] #Necessário usar "var" antes de declarar uma variável
var nome #Cria variável de nome que precisará ser utilizada

func _on_Button_pressed():
	print($LineEdit2.text)
	#Coletando dados inseridos pelo usuário
	numero = int($LineEdit.text) #Remove acento da variável numero
	nome = $LineEdit2.text #Variável nome não foi declarada e a forma de atribuir o seu valor está incorreta, além de estar referenciando o LineEdit errado

func _on_Button2_pressed():
	#Incrementando o número inserido pelo usuário
	for i in range(10):
		numero+=i #altera a primeira letra da variável para "n" minúsculo
		lista.append(numero) #altera a primeira letra da variável para "n" minúsculo
	$Label.text = str(lista)

func _on_Button3_pressed():
	var cont = 0
	var i = 0
	#Mudando o nome do usuário de acordo com os dados da lista
	#Se houver algum número ímpar o nome deve adicionar "baldo" ao final
	while(i < len(lista)): #inclui condicional para prevenir o loop
#		cont=0  ---> Retira essa linha e redeclara as variáveis no escopo da função, mas fora do laço de repetição
#		i=0
		if(lista[i]%2==1):
			cont+=1
		i += 1 #Controla o número de voltas dentro do while e previne um loop
		
	if(cont!=0): #Retira o if dentro do while para que o nome "baldo" seja adicionado somente uma vez
		nome = nome+"baldo"
		$Label2.text = nome
