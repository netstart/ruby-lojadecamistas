class ProdutosController < ApplicationController
  def index
    @produtos = Produto.order(:preco).limit 2
  end
end
