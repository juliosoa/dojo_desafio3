#language: pt
#utf-8

@livros
Funcionalidade: incluir, consultar e alterar informações de livros no sistema
	Eu como sistema
	quero fazer uma requisição
	para incluir, consultar e alterar livros no sistema
	
	@incluirlivro
	Cenario: incluir livros
	Quando eu realizar a inclusão de um livro pela API
	Então recebo codigo de retorno de sucesso da inclusão efetuda

	@consultarlivro
	Cenario: consultar livro especifico
	Quando eu realizar a consulta de um livro especifico pela API
	Então recebo codigo de retorno de sucesso da consulta efetuda

	@alterarlivro
	Cenario: alterar livro
	Quando eu realizar a alteração de um livro pela API
	Então recebo codigo de retorno de sucesso da alteração efeuada