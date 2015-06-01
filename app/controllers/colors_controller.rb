class ColorsController < ApplicationController
  def index
    @colors = Color.all
  end

  def show
    @color = Color.find(params[:id])
  end

  def new
    @color = Color.new
  end

  def create
    @color = Color.new
    @color.color_id = params[:color_id]
    @color.color_desc = params[:color_desc]

    if @color.save
      redirect_to "/colors", :notice => "Color created successfully."
    else
      render 'new'
    end
  end

  def edit
    @color = Color.find(params[:id])
  end

  def update
    @color = Color.find(params[:id])

    @color.color_id = params[:color_id]
    @color.color_desc = params[:color_desc]

    if @color.save
      redirect_to "/colors", :notice => "Color updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @color = Color.find(params[:id])

    @color.destroy

    redirect_to "/colors", :notice => "Color deleted."
  end
end
