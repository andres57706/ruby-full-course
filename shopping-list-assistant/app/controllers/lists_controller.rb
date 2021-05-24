#
# List controller
#
class ListsController < ApplicationController
  before_action :find_list, only: %i[edit show update]

  def index
    @lists = List.all
  end

  def new
    @list = List.new
  end

  def edit; end

  def show; end

  # API Actions

  def create
    @list = List.create(name: params[:list][:name], archived: false, total_items: 0)

    redirect_to @list
  end

  def update
    @list.update(name: params[:list][:name])
    redirect_to @list
  end

  def destroy
    List.destroy_by(id: params[:id])
    redirect_to action: 'index'
  end

  def find_list
    @list = List.find(params[:id])
  end
end
