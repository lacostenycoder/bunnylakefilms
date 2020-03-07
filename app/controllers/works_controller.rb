class WorksController < ApplicationController
  before_action :set_work, only: :show #[:show, :edit, :update, :destroy]

  # GET /works
  # GET /works.json
  def index
    if params[:work_status_id]
      @work_status = WorkStatus.find(params[:work_status_id])
      @works = @work_status.works
    elsif params[:category_id]
      @category = Category.find(params[:category_id])
      @works = @category.works
    else
      @works = Work.order(:category_id, :row_order)
    end
  end

  # GET /works/1
  # GET /works/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_work
      @work = Work.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def work_params
      params.require(:work).permit(:title, :code, :description, :category_id, :work_status_id)
    end
end
