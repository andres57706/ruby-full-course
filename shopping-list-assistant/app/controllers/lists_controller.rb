class ListsController < ApplicationController

  def index
    @lists = List.all()
    render json: @lists
  end

  def new
    @list = List.new()
  end

  def create
    @list = List.create(name: "my first list", archived: false, total_items: 0)

    render json: @list
  end
end
