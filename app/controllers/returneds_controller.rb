class ReturnedsController < ApplicationController
  before_action :set_returned, only: [:show, :edit, :update, :destroy]

  # GET /returneds
  # GET /returneds.json
  def index
    @returneds = Returned.all
  end

  # GET /returneds/1
  # GET /returneds/1.json
  def show
  end

  # GET /returneds/new
  def new
    @returned = Returned.new
  end

  # GET /returneds/1/edit
  def edit
  end

  # POST /returneds
  # POST /returneds.json
  def create
    @returned = Returned.new(returned_params)

    respond_to do |format|
      if @returned.save
        format.html { redirect_to @returned, notice: 'Returned was successfully created.' }
        format.json { render :show, status: :created, location: @returned }
      else
        format.html { render :new }
        format.json { render json: @returned.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /returneds/1
  # PATCH/PUT /returneds/1.json
  def update
    respond_to do |format|
      if @returned.update(returned_params)
        format.html { redirect_to @returned, notice: 'Returned was successfully updated.' }
        format.json { render :show, status: :ok, location: @returned }
      else
        format.html { render :edit }
        format.json { render json: @returned.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /returneds/1
  # DELETE /returneds/1.json
  def destroy
    @returned.destroy
    respond_to do |format|
      format.html { redirect_to returneds_url, notice: 'Returned was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_returned
      @returned = Returned.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def returned_params
      params.require(:returned).permit(:tape_id, :client_id)
    end
end
