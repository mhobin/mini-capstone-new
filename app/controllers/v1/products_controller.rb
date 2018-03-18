class V1::ProductsController < ApplicationController


  def index
    search_term = params[:search]
    products = Product.order(:id).where("name LIKE ?", "%#{search_term}")
    render json: products.as_json
  end

  def show
    the_id = params[:id]
    product = Product.find_by(id: the_id)
    render json: product.as_json

  end

  def create 
    product = Product.new(
      name: params[:name],
      price: params[:price],
      description: params[:description],
      in_stock: params[:in_stock]
      )
    if product.save
      # render json: {message: "test"}
      render json: product.as_json
    else
      render json: {message: product.errors.full_messages}
    end
  end

  def update
    the_id = params[:id]
    product = Product.find_by(id: the_id)
    product.update({
      name: params[:name],
      price: params[:price],
      description: params[:description]
      })
    if product.save
      render json: product.as_json
    else
      render json: {message: "errors"}
    end
  end

  def destroy
    the_id = params[:id]
    product = Product.find_by(id: the_id)
    product.destroy
    # render json: {message: "You have been deleted"}
    render json: {message:"You deleted contact id #{the_id}"}
  end


end
