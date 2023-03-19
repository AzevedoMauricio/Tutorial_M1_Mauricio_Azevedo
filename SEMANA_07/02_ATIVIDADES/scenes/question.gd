extends Node2D

#Variável criada para acessar as posições do array questions, que começa do 0
var array_position = Global.level - 1 

#Array com todas as questões e respostas que serão utilizadas no jogo. Cada opção está associada com um vetor com o texto a ser exibido na opção e um booleano que indica se a resposta está correta
var questions = [
	{
		"question": "Qual desses jogos pertece à Activision/Blizzard?",
		"first_option": ["LOL", false],
		"second_option": ["V.talícios", false],
		"third_option": ["Overwatch", true],
		"fourth_option": ["Fortnite", false]
	},
	{
		"question": "Qual o vídeo com mais visualizações do YouTube?",
		"first_option": ["Baby Shark", true],
		"second_option": ["Despactito", false],
		"third_option": ["Godot e GDScript", false],
		"fourth_option": ["Envolver - Anitta", false]
	},
	{
		"question": "Qual desses cursos é oferecido pelo Inteli?",
		"first_option": ["Ciência da Computação", false],
		"second_option": ["Engenharia da Computação", false],
		"third_option": ["Sistemas da Informação", false],
		"fourth_option": ["Engenharia de Software", false]
	},
	{
		"question": "A Terra possui um formato",
		"first_option": ["Plano", false],
		"second_option": ["Esférico", false],
		"third_option": ["De donut", false],
		"fourth_option": ["Geiodal", true]
	},
	{
		"question": "Nome do criador do jogo",
		"first_option": ["Malrício Azevedo", false],
		"second_option": ["Maurício Azeredo", false],
		"third_option": ["Maurício Azevedo", true],
		"fourth_option": ["Maurílio Azeredo", false]
	},
	{
		"question": "DDD 84",
		"first_option": ["RN", true],
		"second_option": ["PB", false],
		"third_option": ["RS", false],
		"fourth_option": ["RR", false]
	},
	{
		"question": "O único intruso",
		"first_option": ["Borboleta", false],
		"second_option": ["Lagarta", true],
		"third_option": ["Mariposa", false],
		"fourth_option": ["Joaninha", false]
	},
	{
		"question": "Quem vem virando a esquina, com toda alegria, festejando?",
		"first_option": ["Maurício", false],
		"second_option": ["Diego", true],
		"third_option": ["Aurélio", false],
		"fourth_option": ["Juliana Bonde", false]
	},
	{
		"question": "3 + 3 x 3 - 3 / 3 * 3",
		"first_option": ["1", false],
		"second_option": ["6", false],
		"third_option": ["15", false],
		"fourth_option": ["18", false]
	},
	{
		"question": "25% de chance de finalizar o jogo =]",
		"first_option": [" ", false],
		"second_option": [" ", false],
		"third_option": [" ", true],
		"fourth_option": [" ", false]
	},
]

func _ready():
	#Exibe o número do nível
	$question_number.text = str(Global.level)
	
	#Exibe a pergunta do nível
	$question.text = questions[array_position].question
	
	#Exibe as opções de resposta da pergunta do nível
	$first_option.text = questions[array_position].first_option[0]
	$second_option.text = questions[array_position].second_option[0]
	$third_option.text = questions[array_position].third_option[0]
	$fourth_option.text = questions[array_position].fourth_option[0]
	
	#Esconde dois botões que serão utilizados somente em questões especiais
	$todos_button.hide()
	$number_button.hide()
	
	#Verificações do número do nível para realizar ações especiais, como esconder e mostrar informações
	if Global.level == 3:
		$todos_button.show()
	elif Global.level == 5:
		$copyright.hide()
	elif Global.level == 9:
		$number_button.show()
		

#Verifica se a resposta dada pelo usuário está correta. Em caso positivo, avança para o próximo level, caso contrário, volta do começo.
func verify_answer(answer_boolean):
	if answer_boolean:
		if Global.level == 10:
			get_tree().change_scene("res://scenes/final.tscn")
			
		Global.level += 1
		get_tree().reload_current_scene()
	else:
		Global.level = 1
		get_tree().change_scene("res://scenes/game_over.tscn")

#Funções que verificam se a resposta daquele botão está correta
func _on_first_option_pressed():
	verify_answer(questions[array_position].first_option[1])
		
func _on_second_option_pressed():
	verify_answer(questions[array_position].second_option[1])

func _on_third_option_pressed():
	verify_answer(questions[array_position].third_option[1])

func _on_fourth_option_pressed():
	verify_answer(questions[array_position].fourth_option[1])

#Funções que avançam no jogo em questões especiais
func _on_todos_button_pressed():
	verify_answer(true)

func _on_number_button_pressed():
	verify_answer(true)
