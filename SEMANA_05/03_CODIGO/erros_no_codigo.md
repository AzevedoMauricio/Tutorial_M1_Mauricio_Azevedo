# Erros presentes no script da atividade da semana 05

## Erro 01 - Linha 05
<code>var número = 0</code>

No trecho de código acima, vemos um erro ao criar uma variável cujo nome possui um acento agudo "´". Alguns caracteres especiais não são permitidos, como é o caso do "´". Assim, uma sugestão de alteração segue:

<code>var numero = 0</code>

## Erro 02 - Linha 06
<code>lista = []</code>

Para se declarar variáveis no GDScript, é necessário utilizar a palavra reservada "var" antes do nome da variável. Logo, o trecho correto seria:

<code> var lista = []</code>

## Erro 03 - Linha 10
<code>número = int(LineEdit.text)</code>
O trecho apresenta dois erros. O primeiro é o nome da variável número e o segundo é que, para se pegar um nó filho do nó principal (a cena), devemos utilizar o símbolo de "$" antes do nome do nó.

## Erro 04 - Linha 11
<code>$LineEdit.text = nome</code>
O trecho apresenta trÊs  erros. O primeiro é que a variável nome não foi declarada. Assim, vamos declarar ela lá no início do código, junto com as demais. Além diso, para atribuir um valor a uma variável, primeiro deve ser usado o nome da variável, seguido do símbolo de "=" e, por último, o valor. Por fim, o terceiro erro é estarmos pegando o dado no mesmo LineEdit que o número, então ao invés de um nome, teremos um número. Para corrigir isso, utilizamos o LineEdit2. Então, a correta forma de escrita desse código é:

<code>nome = $LineEdit2.text = </code>

## Erro 05 - Linhas 17 e 18
<code>Numero+=i</code>

<code>lista.append(Numero)</code>

A linguagem GDScript é case sensitive. Isso significa que letras maiúsculas e minúsculas fazem diferença na hora de criar variáveis. Assim, Número é diferente de número. Corrigindo essa linha, temos:

<code>numero+=i</code>

<code>lista.append(numero)</code>

## Erro 06 - Linha 25
<code>while(len(lista)):</code>

Esse é um trecho de código perigoso, pois ele pode facilmente travar um computador, por exemplo. Isso acontece porque, como não existe uma condição dentro do while, caso essa lista não esteja vazia, entraremos em um loop, já que qualquer número diferente de 0 é interpretado como true. Vamos colocar então uma variável auxiliar (cont) para podermos ter um controle melhor. Assim, nossa condição dentro do while será:

<code>while(cont < len(lista)):</code>

## Erro 07 - Linhas 26 e 27
<code>cont = 0</code>

cont e i são variáveis que não foram declaradas. Como elas só serão usadas nesse escopo, podemos declarar ela dentro da função "_on_Button3_pressed()", mas fora do while. Assim, teremos algo nesse estilo:

<code>var cont = 0 </code>

<code>var i = 0 </code>

Além disso, devemos apagar as antigas linhas 26 e 27, pois, do contrário, o valor delas sempre seriam 0.


## Erro 08 - Linhas 30 e 31
<code>if(cont!=0):</code>
<code>  nome = nome+"baldo"</code>

Nesse trecho de código, queremos verificar se o contador é diferente de 0 e, pela lógica que o código apresenta, isso significa que o contador será diferente de 0 quando houver algum número ímpar na lista. Para fazer isso, vamos apenas corrigir a identação, fazendo com que esse bloco de condicional fique fora do bloco de repetição, pois, do contrário, o nome "baldo" seria adicionado várias vezes.

## Erro 09
Para que consigamos fazer o controle do nosso laço de repetição, precisamos que, na última linha do bloco while, incrementemos a variável i em 1, pois isso previnirá o loop, haja vista que a variável i contará o número de entradas dentro do bloco while e, quando esse número de entradas for igual ao tamanho da lista, ele não entrará mais nesse bloco de repetição. Então, incluíremos uma linha nesse estilo (dentro do while e fora de qualquer condicional):

<code>i+=1</code>

## Comentários
- Como as variáveis "teste" e valor não foram utilizadas, poderemos apagar suas declarações no início do código.
- Uma vez que o código estará somando de 1 a 10 ao número digitado pelo usuário, concluímos que na lista sempre existirá um número ímpar e, por conseguinte, sempre será adicionado o nome "baldo" ao final.
- Quando o botão2 era pressionado, o código fazia com que o label mostrasse o número depois de somar todos os números de 1 a 10. Apesar de não entender qual o propósito, fiz com que o label exibisse toda a lista.
