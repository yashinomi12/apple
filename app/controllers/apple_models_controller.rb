class AppleModelsController < ApplicationController
  before_action :set_apple_model, only: [:show, :edit, :update, :destroy]

  # GET /apple_models
  # GET /apple_models.json
  def index
    @apple_models = AppleModel.all
  end

  # GET /apple_models/1
  # GET /apple_models/1.json
  def show
  end

  # GET /apple_models/new
  def new
    @apple_model = AppleModel.new
  end

  # GET /apple_models/1/edit
  def edit
  end

  # POST /apple_models
  # POST /apple_models.json
  def create
    @apple_model = AppleModel.new(apple_model_params)

    respond_to do |format|
      if @apple_model.save
        format.html { redirect_to @apple_model, notice: 'Apple model was successfully created.' }
        format.json { render :show, status: :created, location: @apple_model }
      else
        format.html { render :new }
        format.json { render json: @apple_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /apple_models/1
  # PATCH/PUT /apple_models/1.json
  def update
    respond_to do |format|
      if @apple_model.update(apple_model_params)
        format.html { redirect_to @apple_model, notice: 'Apple model was successfully updated.' }
        format.json { render :show, status: :ok, location: @apple_model }
      else
        format.html { render :edit }
        format.json { render json: @apple_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /apple_models/1
  # DELETE /apple_models/1.json
  def destroy
    @apple_model.destroy
    respond_to do |format|
      format.html { redirect_to apple_models_url, notice: 'Apple model was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_apple_model
      @apple_model = AppleModel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def apple_model_params
      params.fetch(:apple_model, {})
    end
end
