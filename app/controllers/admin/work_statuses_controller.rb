class Admin::WorkStatusesController < Admin::BaseController
  before_action :set_work_status, only: [:show, :edit, :update, :destroy]

  # GET /admin/work_statuses
  # GET /admin/work_statuses.json
  def index
    @work_statuses = WorkStatus.all
  end

  # GET /admin/work_statuses/1
  # GET /admin/work_statuses/1.json
  def show
  end

  # GET /admin/work_statuses/new
  def new
    @work_status = WorkStatus.new
  end

  # GET /admin/work_statuses/1/edit
  def edit
  end

  # POST /admin/work_statuses
  # POST /admin/work_statuses.json
  def create
    @work_status = WorkStatus.new(work_status_params)

    respond_to do |format|
      if @work_status.save
        format.html { redirect_to [:admin, @work_status], notice: 'Work status was successfully created.' }
        format.json { render action: 'show', status: :created, location: @work_status }
      else
        format.html { render action: 'new' }
        format.json { render json: @work_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/work_statuses/1
  # PATCH/PUT /admin/work_statuses/1.json
  def update
    respond_to do |format|
      if @work_status.update(work_status_params)
        format.html { redirect_to [:admin, @work_status], notice: 'Work status was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @work_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/work_statuses/1
  # DELETE /admin/work_statuses/1.json
  def destroy
    @work_status.destroy
    respond_to do |format|
      format.html { redirect_to admin_work_statuses_url, notice: 'Work status was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_work_status
      @work_status = WorkStatus.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def work_status_params
      params.require(:work_status).permit(:name)
    end
end
