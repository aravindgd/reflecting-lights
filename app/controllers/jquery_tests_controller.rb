class JqueryTestsController < ApplicationController
  before_action :set_jquery_test, only: [:show, :edit, :update, :destroy]

  # GET /jquery_tests
  # GET /jquery_tests.json
  def index
    @jquery_tests = JqueryTest.all
  end

  # GET /jquery_tests/1
  # GET /jquery_tests/1.json
  def show
  end

  # GET /jquery_tests/new
  def new
    @jquery_test = JqueryTest.new
  end

  # GET /jquery_tests/1/edit
  def edit
  end

  # POST /jquery_tests
  # POST /jquery_tests.json
  def create
    @jquery_test = JqueryTest.new(jquery_test_params)

    respond_to do |format|
      if @jquery_test.save
        format.html { redirect_to @jquery_test, notice: 'Jquery test was successfully created.' }
        format.json { render action: 'show', status: :created, location: @jquery_test }
      else
        format.html { render action: 'new' }
        format.json { render json: @jquery_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jquery_tests/1
  # PATCH/PUT /jquery_tests/1.json
  def update
    respond_to do |format|
      if @jquery_test.update(jquery_test_params)
        format.html { redirect_to @jquery_test, notice: 'Jquery test was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @jquery_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jquery_tests/1
  # DELETE /jquery_tests/1.json
  def destroy
    @jquery_test.destroy
    respond_to do |format|
      format.html { redirect_to jquery_tests_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jquery_test
      @jquery_test = JqueryTest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def jquery_test_params
      params[:jquery_test]
    end
end
