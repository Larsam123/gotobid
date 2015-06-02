class ProposalprodsController < ApplicationController
  def index
    @proposalprods = Proposalprods.all
  end

  def show
    @proposalprods = Proposalprods.find(params[:id])
  end

  def new
    @proposalprods = Proposalprods.new
  end

  def create
    @proposalprods = Proposalprods.new
    @proposalprods.proposal_id = params[:proposal_id]
    @proposalprods.product_id = params[:product_id]
    @proposalprods.size_id = params[:size_id]
    @proposalprods.color_id = params[:color_id]
    @proposalprods.quantity = params[:quantity]
    @proposalprods.user_request_price = params[:user_request_price]
    @proposalprods.proposal_rfp_price = nil
    @proposalprods.material_id = params[:material_id]

    if @proposalprods.save
      redirect_to "/proposals/", :notice => "proposalprods created successfully."
    else
      render 'new'
    end
  end

  def edit
    @proposalprods = Proposalprods.find(params[:id])
  end

  def update
    @proposalprods = Proposalprods.find(params[:id])

    @proposalprods.proposalprods_id = params[:proposalprods_id]
    @proposalprods.product_id = params[:product_id]
    @proposalprods.size_id = params[:size_id]
    @proposalprods.color_id = params[:color_id]
    @proposalprods.quantity = params[:quantity]
    @proposalprods.user_request_price = params[:user_request_price]
    @proposalprods.proposal_rfp_price = params[:proposal_rfp_price]
    @proposalprods.material_id = params[:material_id]

    if @proposalprods.save
      redirect_to "/proposalprodss", :notice => "proposalprods updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @proposalprods = Proposalprods.find(params[:id])

    @proposalprods.destroy

    redirect_to "/proposalprodss", :notice => "proposalprods deleted."
  end
end