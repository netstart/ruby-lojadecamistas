class ProdutosController < ApplicationController
  def index
    @produtos = Produto.order(:preco).limit 2
  end

  def create
    #usar simbolo economiza memoria por não gerar a string em memória
    valores = params.require(:produto).permit!

    produto = Produto.create valores
  end
end
