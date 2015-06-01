class ArsController < ApplicationController
  def index
    @ars = Ar.all
  end

  def show
    @ar = Ar.find(params[:id])
  end

  def new
    @ar = Ar.new
  end

  def create
    @ar = Ar.new
    @ar.user_id = params[:user_id]
    @ar.proposal_id = params[:proposal_id]
    @ar.invoice_number = params[:invoice_number]
    @ar.invoice_date = params[:invoice_date]
    @ar.amt_owed = params[:amt_owed]
    @ar.amt_paid = params[:amt_paid]

    if @ar.save
      redirect_to "/ars", :notice => "Ar created successfully."
    else
      render 'new'
    end
  end

  def edit
    @ar = Ar.find(params[:id])
  end

  def update
    @ar = Ar.find(params[:id])

    @ar.user_id = params[:user_id]
    @ar.proposal_id = params[:proposal_id]
    @ar.invoice_number = params[:invoice_number]
    @ar.invoice_date = params[:invoice_date]
    @ar.amt_owed = params[:amt_owed]
    @ar.amt_paid = params[:amt_paid]

    if @ar.save
      redirect_to "/ars", :notice => "Ar updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @ar = Ar.find(params[:id])

    @ar.destroy

    redirect_to "/ars", :notice => "Ar deleted."
  end
end
