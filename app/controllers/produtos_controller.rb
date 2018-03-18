class ProdutosController < ApplicationController
  def index
    @produtos = Produto.order(:preco).limit 2
  end

  def create
    #usar simbolo economiza memoria por não gerar a string em memória
    valores = params.require(:produto).permit :nome, :preco, :descricao, :quantidade

    produto = Produto.create valores
  end

  def destroy
    redirect_to produtos_url
  end
end
