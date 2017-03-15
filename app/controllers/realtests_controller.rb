class RealtestsController < ApplicationController
  before_action :set_realtest, only: [:show, :edit, :update, :destroy]

  # GET /realtests
  # GET /realtests.json
  def index
    @realtests = Realtest.all
    @applications = Application.all
    @platforms = Platform.all
    @features = Feature.all
    @publishers = Publisher.all
  end

  # GET /realtests/1
  # GET /realtests/1.json
  def show
  end

  # GET /realtests/new
  def new
    @realtest = Realtest.new
  end

  # GET /realtests/1/edit
  def edit
  end

  # POST /realtests
  # POST /realtests.json
  def create
    @realtest = Realtest.new(realtest_params)

    respond_to do |format|
      if @realtest.save
        format.html { redirect_to @realtest, notice: 'Realtest was successfully created.' }
        format.json { render :show, status: :created, location: @realtest }
      else
        format.html { render :new }
        format.json { render json: @realtest.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /realtests/1
  # PATCH/PUT /realtests/1.json
  def update
    respond_to do |format|
      if @realtest.update(realtest_params)
        format.html { redirect_to @realtest, notice: 'Realtest was successfully updated.' }
        format.json { render :show, status: :ok, location: @realtest }
      else
        format.html { render :edit }
        format.json { render json: @realtest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /realtests/1
  # DELETE /realtests/1.json
  def destroy
    @realtest.destroy
    respond_to do |format|
      format.html { redirect_to realtests_url, notice: 'Realtest was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_realtest
      @realtest = Realtest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def realtest_params
      params.require(:realtest).permit(:application_id, :publisher_id, :platform_id, :feature_id)
    end
end
