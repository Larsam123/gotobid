class ProposalsController < ApplicationController
  def index
    @proposal = Proposal.all
  end

  def show
    @proposal = Proposal.find(params[:id])
  end

  def new
    @proposal = Proposal.new
  end

  def create
    @proposal = Proposal.new
    @proposal.proposal_id = Proposal.last+1
    @proposal.user_id = current_user.id
    @proposal.user_id_vendor = nil
    @proposal.win = 'false'
    @proposal.user_request_val = params[:user_request_val]
    @proposal.proposal_rfp_val = params[:proposal_rfp_val]
    @proposal.product_id = params[:product_id]
    @proposal.size_id = params[:size_id]
    @proposal.color_id = params[:color_id]
    @proposal.quantity = params[:quantity]
    @proposal.user_request_price = params[:user_request_price]
    @proposal.proposal_rfp_price = params[:proposal_rfp_price]
    @proposal.material_id = params[:material_id]
    @proposal.start_date = params[:start_date]
    @proposal.end_date = params[:end_date]

    if @proposal.save
      redirect_to "/proposals", :notice => "Proposal created successfully."
    else
      render 'new'
    end
  end

  def edit
    @proposal = Proposal.find(params[:id])
  end

  def update
    @proposal = Proposal.find(params[:id])

    @proposal.proposal_id = params[:proposal_id]
    @proposal.user_id = params[:user_id]
    @proposal.user_id_vendor = params[:user_id_vendor]
    @proposal.win = params[:win]
    @proposal.user_request_val = params[:user_request_val]
    @proposal.proposal_rfp_val = params[:proposal_rfp_val]
    @proposal.product_id = params[:product_id]
    @proposal.size_id = params[:size_id]
    @proposal.color_id = params[:color_id]
    @proposal.quantity = params[:quantity]
    @proposal.user_request_price = params[:user_request_price]
    @proposal.proposal_rfp_price = params[:proposal_rfp_price]
    @proposal.material_id = params[:material_id]
    @proposal.start_date = params[:start_date]
    @proposal.end_date = params[:end_date]

    if @proposal.save
      redirect_to "/proposals", :notice => "Proposal updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @proposal = Proposal.find(params[:id])

    @proposal.destroy

    redirect_to "/proposals", :notice => "Proposal deleted."
  end
end
