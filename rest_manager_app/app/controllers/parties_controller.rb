class PartiesController < ApplicationController

  def index
    @party = Party.all
  end

  def new
    @party = Party.new
  end

  def create
    @party = Party.new(party_params)
    if @party.save
        redirect_to parties_path
    else
      redirect_to new_party_path
    end
  end

  def edit
    @party = Party.find(params[:id])
  end

  def update
    @party = Party.find(params[:id])
    @party.update(party_params)
    redirect_to parties_path
  end

  def destroy
    @party = Party.find(params[:id])
    @party.destroy
    redirect_to parties_path
  end

private

  def party_params
    params.require(:party).permit(:table_number, :guests, :paid?, :order_id)
  end


end
