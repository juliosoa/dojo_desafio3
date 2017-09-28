#### ALTERAÇÃO DE LIVROS #########################################################
Quando(/^eu realizar a alteração de um livro pela API$/) do
     @alterarLivro = ControleLivros.new.putBook("199", "Edição Especial do Dia das Mães")
       puts @alterarLivro.body
end

Então(/^recebo codigo de retorno de sucesso da alteração efeuada$/) do
     expect(@alterarLivro.code).to eq 200
       puts @alterarLivro.code
end
