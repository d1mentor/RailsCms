class FootersController < ApplicationController
  before_action :set_footer, only: %i[ show edit update destroy ]

  # GET /footers or /footers.json
  def index
    @footers = Footer.all
  end

  # GET /footers/1 or /footers/1.json
  def show
  end

  # GET /footers/new
  def new
    @footer = Footer.new
  end

  # GET /footers/1/edit
  def edit
  end

  # POST /footers or /footers.json
  def create
    @footer = Footer.new(footer_params)

    respond_to do |format|
      if @footer.save
        format.html { redirect_to footer_url(@footer), notice: "Footer was successfully created." }
        format.json { render :show, status: :created, location: @footer }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @footer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /footers/1 or /footers/1.json
  def update
    respond_to do |format|
      if @footer.update(footer_params)
        format.html { redirect_to footer_url(@footer), notice: "Footer was successfully updated." }
        format.json { render :show, status: :ok, location: @footer }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @footer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /footers/1 or /footers/1.json
  def destroy
    @footer.destroy

    respond_to do |format|
      format.html { redirect_to footers_url, notice: "Footer was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_footer
      @footer = Footer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def footer_params
      params.require(:footer).permit(:code, :active, :name, :language_id)
    end
end
