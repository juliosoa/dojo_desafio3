#### CONSULTA DE LIVRO ESPECIFICO ################################################

Quando(/^eu realizar a consulta de um livro especifico pela API$/) do
     @consultarLivro = ControleLivros.new.getBook("199")
       puts @consultarLivro.body
end

Então(/^recebo codigo de retorno de sucesso da consulta efetuda$/) do
     expect(@consultarLivro.code).to eq 200
       puts @consultarLivro.code
end