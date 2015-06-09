class ProposalprodsController < ApplicationController
  def index
    @proposalprods = Proposalprod.all
  end

  def show
    @proposalprods = Proposalprod.find(params[:id])
  end

  def new
    @proposalprods = Proposalprod.new
  end

  def create
    @proposalprods = Proposalprod.new
    @proposalprods.proposal_id = params[:proposal_id]
    @proposalprods.product_id = params[:product_id]
    @proposalprods.size_id = params[:size_id]
    @proposalprods.color_id = params[:color_id]
    @proposalprods.quantity = params[:quantity]
    @proposalprods.user_request_price = params[:user_request_price]
    @proposalprods.proposal_rfp_price = nil
    @proposalprods.material_id = params[:material_id]

    if @proposalprods.save
      redirect_to "/proposals/#{@proposalprods.proposal_id}", :notice => "proposalprods created successfully."
    else
      render 'new'
    end
  end

  def edit
    @proposalprods = Proposalprod.find(params[:id])

    @user = current_user
  end

  def update
    @proposalprods = Proposalprod.find(params[:id])

    @proposalprods.user_id = params[:user_id]
    @proposalprods.product_id = params[:product_id]
    @proposalprods.size_id = params[:size_id]
    @proposalprods.color_id = params[:color_id]
    @proposalprods.quantity = params[:quantity]
    @proposalprods.user_request_price = params[:user_request_price]
    @proposalprods.proposal_rfp_price = params[:proposal_rfp_price]
    @proposalprods.material_id = params[:material_id]

    if @proposalprods.save
      redirect_to "/proposals/#{@proposalprods.proposal_id}", :notice => "proposalprods updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @proposalprods = Proposalprod.find(params[:id])

    @proposal_id = @proposalprods.proposal_id

    @proposalprods.destroy

    redirect_to "/proposals/#{@proposal_id}", :notice => "proposalprods deleted."
  end
end
