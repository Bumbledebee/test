class TestvaluesController < ApplicationController
  before_action :set_testvalue, only: [:show, :edit, :update, :destroy]

  # GET /testvalues
  # GET /testvalues.json
  def index
    @testvalues = Testvalue.all
  end

  # GET /testvalues/1
  # GET /testvalues/1.json
  def show
  end

  # GET /testvalues/new
  def new
    @testvalue = Testvalue.new
  end

  # GET /testvalues/1/edit
  def edit
  end

  # POST /testvalues
  # POST /testvalues.json
  def create
    @testvalue = Testvalue.new(testvalue_params)

    respond_to do |format|
      if @testvalue.save
        format.html { redirect_to @testvalue, notice: 'Testvalue was successfully created.' }
        format.json { render :show, status: :created, location: @testvalue }
      else
        format.html { render :new }
        format.json { render json: @testvalue.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /testvalues/1
  # PATCH/PUT /testvalues/1.json
  def update
    respond_to do |format|
      if @testvalue.update(testvalue_params)
        format.html { redirect_to @testvalue, notice: 'Testvalue was successfully updated.' }
        format.json { render :show, status: :ok, location: @testvalue }
      else
        format.html { render :edit }
        format.json { render json: @testvalue.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /testvalues/1
  # DELETE /testvalues/1.json
  def destroy
    @testvalue.destroy
    respond_to do |format|
      format.html { redirect_to testvalues_url, notice: 'Testvalue was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_testvalue
      @testvalue = Testvalue.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def testvalue_params
      params.require(:testvalue).permit(:value, :test_id, :result_state, :result_recommendation)
    end
end
