class ProductsController < ApplicationController
  def calculadora
    @products = OpenStruct.new
  end

  def calcula
    @products = OpenStruct.new(products_params)

    produto1_kg = @products.produto1_kg.to_f
    produto1_valor = @products.produto1_valor.to_f

    @valor_por_kg_produto1 = produto1_valor
  end

  private

  def products_params
    params.require(:products).permit(:produto1_kg, :produto1_valor)
  end
end
