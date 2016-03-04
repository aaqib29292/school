class StandardsController < ApplicationController
  def index
    @all_standards = Standard.all
  end

  def show
    @standard = Standard.find(params[:id])
  end

  def new
    @standard = Standard.new
  end

  def create
    @standard = Standard.new(standard_params)
    if @standard.save
      redirect_to standards_path
    else
      render :edit
    end
  end

  def edit
    @standard = Standard.find(params[:id])
  end

  def update
    @standard = Standard.find(params[:id])
    @standard.update_attributes(standard_params)
    if @standard.save
      redirect_to standards_path
    else
      render :edit
    end
  end

  def destroy
    @standard = Standard.find(params[:id])
    if @standard.destroy!
      redirect_to standards_path
    end
  end

private
  def standard_params
    params.require(:standard).permit(:name)
  end

end
