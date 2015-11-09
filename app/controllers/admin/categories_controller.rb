class Admin::CategoriesController < Admin::BaseController
  before_action :set_category, only: [:show, :edit, :update, :update_row_order, :destroy]

  # GET /admin/categories
  # GET /admin/categories.json
  def index
    @categories = Category.rank(:row_order)
  end

  # GET /admin/categories/1
  # GET /admin/categories/1.json
  def show
  end

  # GET /admin/categories/new
  def new
    @category = Category.new
  end

  # GET /admin/categories/1/edit
  def edit
  end

  # POST /admin/categories
  # POST /admin/categories.json
  def create
    @category = Category.new(category_params)

    respond_to do |format|
      if @category.save
        flash[:success] = 'Category was successfully created.'
        format.html { redirect_to action: 'index' }
        format.json { render :show, status: :created, location: @category }
      else
        flash[:notice] = 'Please check errors and resubmit.'
        format.html { render :new }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/categories/1
  # PATCH/PUT /admin/categories/1.json
  def update
    respond_to do |format|
      if @category.update(category_params)
        flash[:success] = 'Category was successfully updated.'
        format.html { redirect_to action: 'index' }
        format.json { render :show, status: :ok, location: @category }
      else
        flash[:notice] = 'Please check errors and resubmit.'
        format.html { render :edit }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end

  # POST /admin/categories/1/update_row_order
  def update_row_order
    @category.row_order_position = category_params[:row_order_position]
    @category.save

    render nothing: true
  end

  # DELETE /admin/categories/1
  # DELETE /admin/categories/1.json
  def destroy
    @category.destroy
    respond_to do |format|
      flash[:success] = 'Category was successfully destroyed.'
      format.html { redirect_to action: 'index' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category
      @category = Category.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def category_params
      params.require(:category).permit(:name, :row_order_position)
    end
end
