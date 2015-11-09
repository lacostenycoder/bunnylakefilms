class Admin::WorksController < Admin::BaseController
  before_action :set_work, only: [:show, :edit, :update, :update_row_order, :destroy]

  # GET /admin/works
  # GET /admin/works.json
  def index
    @categories = Category.rank(:row_order)
  end

  # GET /admin/works/1
  # GET /admin/works/1.json
  def show
  end

  # GET /admin/works/new
  def new
    @work = Work.new
  end

  # GET /admin/works/1/edit
  def edit
    @category = Category.find(@work.category_id)
  end

  # POST /admin/works
  # POST /admin/works.json
  def create
    @work = Work.new(work_params)

    respond_to do |format|
      if @work.save
        format.html { redirect_to admin_works_url, notice: 'Work was successfully created.' }
        format.json { render :show, status: :created, location: @work }
      else
        format.html { render :new }
        format.json { render json: @work.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/works/1
  # PATCH/PUT /admin/works/1.json
  def update
    respond_to do |format|
      if @work.update(work_params)
        format.html { redirect_to admin_works_url, notice: 'Work was successfully updated.' }
        format.json { render :show, status: :ok, location: @work }
      else
        format.html { render :edit }
        format.json { render json: @work.errors, status: :unprocessable_entity }
      end
    end
  end

  # POST /admin/works/1/update_row_order
  def update_row_order
    @work.row_order_position = work_params[:row_order_position]
    @work.save

    render nothing: true
  end

  # DELETE /admin/works/1
  # DELETE /admin/works/1.json
  def destroy
    @work.destroy
    respond_to do |format|
      format.html { redirect_to admin_works_url, notice: 'Work was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_work
      @work = Work.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def work_params
      params.require(:work).permit(:title, :video_code, :still_code, :mobile, :description, :row_order_position, :category_id)
    end
end
