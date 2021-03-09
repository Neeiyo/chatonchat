class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def new
    @items = Item.new
  end 

  def create
    @items = Item.create
  end 

  def show 
    @item = Item.find(params[:id])
    @user = current_user
  end 
end
