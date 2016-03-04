class StandardsController < ApplicationController
  def index
    @all_standards = Standard.all
  end

  def show
    @standard = Standard.find(params[:id])
  end

  def create

  end

  def edit
    @standard = Standard.find(params[:id])
  end

  def update

  end

  def destroy

  end
end
