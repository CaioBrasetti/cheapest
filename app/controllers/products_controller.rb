class ProductsController < ApplicationController
  def calcula
    @produto1_kg = params[:produto1_kg].to_f
    @produto1_valor = params[:produto1_valor].to_f
    @valor_por_kg_produto1 = @produto1_kg / @produto1_valor

    session[:produto1_valor] = @produto1_valor
    session[:valor_por_kg_produto1] = @valor_por_kg_produto1

    # redirect_to("/products/resultados", allow_other_host: true)
    redirect_to("/products/resultados", allow_other_host: true)
  end

  def resultados
    # Para acessar um valor na sessão
    @produto1_valor = session[:produto1_valor]
    @valor_por_kg_produto = session[:valor_por_kg_produto1]
  end
end
