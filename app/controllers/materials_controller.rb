class MaterialsController < ApplicationController

  before_action :ensure_sign_in

  def ensure_sign_in
    if current_user.present? == false
      redirect_to '/users/sign_in', :alert => "Please sign in"
    end
  end

  def index
    @materials = Material.all
  end

  def show
    @material = Material.find(params[:id])
  end

  def new
    @material = Material.new
  end

  def create
    @material = Material.new
    @material.material_id = params[:material_id]
    @material.material_desc = params[:material_desc]

    if @material.save
      redirect_to "/materials", :notice => "Material created successfully."
    else
      render 'new'
    end
  end

  def edit
    @material = Material.find(params[:id])
  end

  def update
    @material = Material.find(params[:id])

    @material.material_id = params[:material_id]
    @material.material_desc = params[:material_desc]

    if @material.save
      redirect_to "/materials", :notice => "Material updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @material = Material.find(params[:id])

    @material.destroy

    redirect_to "/materials", :notice => "Material deleted."
  end
end
