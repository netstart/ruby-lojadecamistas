class ProdutosController < ApplicationController
  def index
    @produtos = Produto.order(:preco).limit 10
  end

  def create
    #usar simbolo economiza memoria por não gerar a string em memória
    valores = params.require(:produto).permit :nome, :preco, :descricao, :quantidade

    Produto.create valores
    redirect_to produtos_path
  end

  def destroy
    id = params[:id]
    Produto.destroy id
    redirect_to produtos_path
  end
end
