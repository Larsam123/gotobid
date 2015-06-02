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
    @proposal.proposal_id = @proposal.id
    @proposal.user_id = current_user.id
    @proposal.user_id_vendor = nil
    @proposal.win = 'false'
    @proposal.user_request_val = params[:user_request_val]
    @proposal.proposal_rfp_val = nil
    @proposal.start_date = params[:start_date]
    @proposal.end_date = params[:end_date]

    if @proposal.save
      redirect_to "/", :notice => "Time to add your products"
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
