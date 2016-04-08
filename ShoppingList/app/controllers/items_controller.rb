class ItemsController < ApplicationController
  before_action :set_list
  def create

    @item = Item.create(item_params)

    redirect_to @list
  end
  def destroy
    @item = @list.items.find(params[:id])
    if @item.destroy
      flash[:success] = "Deleted"
    else
      flash[:error] = "Could not be deleted"
    end
    redirect_to @list
  end

  private
  def set_list
    @list = List.find(params[:list_id])

  end
  def item_params
    params[:item].permit(:name,:list_id)
  end
end
