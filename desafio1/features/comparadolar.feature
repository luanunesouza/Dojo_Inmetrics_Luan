#language: pt
#utf-8

Funcionalidade: ValidarQuemSomos
	Eu como usuario 
	Quero entrar no site do UOL
	Para efetuar comparação de dólar

	Cenario: Validar texto
		Dado que esteja no site Google
		Quando fizer uma busca pelo nome "UOL"
		Então faço comparação do dólar