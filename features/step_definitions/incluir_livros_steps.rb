#### INCLUSAO DE LIVROS ##########################################################

Quando(/^eu realizar a inclusão de um livro pela API$/) do
      @criarLivros = ControleLivros.new.createBook("Livro Dom Casmurro","teste@inmetrics.com.br","256","Sumário resumido","2017-06-27T13:00:00.549505+00:00")
      puts @criarLivros.body
end

Então(/^recebo codigo de retorno de sucesso da inclusão efetuda$/) do
     expect(@criarLivros.code).to eq 200
       puts @criarLivros.code
end