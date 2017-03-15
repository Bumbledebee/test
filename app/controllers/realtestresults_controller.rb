class RealtestresultsController < ApplicationController
  before_action :set_realtestresult, only: [:show, :edit, :update, :destroy]

  # GET /realtestresults
  # GET /realtestresults.json
  def index
    @realtestresults = Realtestresult.all
  end

  # GET /realtestresults/1
  # GET /realtestresults/1.json
  def show
  end

  # GET /realtestresults/new
  def new
    @realtestresult = Realtestresult.new
  end

  # GET /realtestresults/1/edit
  def edit
  end

  # POST /realtestresults
  # POST /realtestresults.json
  def create
    @realtestresult = Realtestresult.new(realtestresult_params)

    respond_to do |format|
      if @realtestresult.save
        format.html { redirect_to @realtestresult, notice: 'Realtestresult was successfully created.' }
        format.json { render :show, status: :created, location: @realtestresult }
      else
        format.html { render :new }
        format.json { render json: @realtestresult.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /realtestresults/1
  # PATCH/PUT /realtestresults/1.json
  def update
    respond_to do |format|
      if @realtestresult.update(realtestresult_params)
        format.html { redirect_to @realtestresult, notice: 'Realtestresult was successfully updated.' }
        format.json { render :show, status: :ok, location: @realtestresult }
      else
        format.html { render :edit }
        format.json { render json: @realtestresult.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /realtestresults/1
  # DELETE /realtestresults/1.json
  def destroy
    @realtestresult.destroy
    respond_to do |format|
      format.html { redirect_to realtestresults_url, notice: 'Realtestresult was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_realtestresult
      @realtestresult = Realtestresult.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def realtestresult_params
      params.require(:realtestresult).permit(:realtest_id, :test_id, :testvalue_id, :testresult_id)
    end
end
