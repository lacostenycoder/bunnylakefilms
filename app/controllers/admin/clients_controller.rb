class Admin::ClientsController < Admin::BaseController
  before_action :set_client, only: [:show, :edit, :update, :destroy]

  def index
    @clients = Client.order(:name)
  end

  def show
  end

  def new
    @client = Client.new
  end

  def edit
  end

  def create
    @client = Client.new(client_params)

    respond_to do |format|
      if @client.save
        flash[:success] = 'client was successfully created.'
        format.html { redirect_to action: 'index' }
        format.json { render :show, status: :created, location: @client }
      else
        flash[:notice] = 'Please check errors and resubmit.'
        format.html { render :new }
        format.json { render json: @client.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @client.update(client_params)
        flash[:success] = 'client was successfully updated.'
        format.html { redirect_to action: 'index' }
        format.json { render :show, status: :ok, location: @client }
      else
        flash[:notice] = 'Please check errors and resubmit.'
        format.html { render :edit }
        format.json { render json: @client.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @client.destroy
    respond_to do |format|
      flash[:success] = 'client was successfully destroyed.'
      format.html { redirect_to action: 'index' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_client
      @client = Client.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def client_params
      params.require(:client).permit(:name, :row_order_position)
    end
end
