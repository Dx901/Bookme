class BookinTypesController < ApplicationController
  before_action :set_bookin_type, only: %i[ show edit update destroy ]

  # GET /bookin_types or /bookin_types.json
  def index
    @bookin_types = BookinType.all
  end

  # GET /bookin_types/1 or /bookin_types/1.json
  def show
  end

  # GET /bookin_types/new
  def new
    @bookin_type = BookinType.new
  end

  # GET /bookin_types/1/edit
  def edit
  end

  # POST /bookin_types or /bookin_types.json
  def create
    @bookin_type = BookinType.new(bookin_type_params)

    respond_to do |format|
      if @bookin_type.save
        format.html { redirect_to bookin_type_url(@bookin_type), notice: "Bookin type was successfully created." }
        format.json { render :show, status: :created, location: @bookin_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bookin_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bookin_types/1 or /bookin_types/1.json
  def update
    respond_to do |format|
      if @bookin_type.update(bookin_type_params)
        format.html { redirect_to bookin_type_url(@bookin_type), notice: "Bookin type was successfully updated." }
        format.json { render :show, status: :ok, location: @bookin_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bookin_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bookin_types/1 or /bookin_types/1.json
  def destroy
    @bookin_type.destroy

    respond_to do |format|
      format.html { redirect_to bookin_types_url, notice: "Bookin type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bookin_type
      @bookin_type = BookinType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bookin_type_params
      params.require(:bookin_type).permit(:name, :location, :description, :color, :duration, :payment_required, :price, :user_id)
    end
end
