class NavsController < ApplicationController
  before_action :set_nav, only: %i[ show edit update destroy ]

  # GET /navs or /navs.json
  def index
    @navs = Nav.all
  end

  # GET /navs/1 or /navs/1.json
  def show
  end

  # GET /navs/new
  def new
    @nav = Nav.new
  end

  # GET /navs/1/edit
  def edit
  end

  # POST /navs or /navs.json
  def create
    @nav = Nav.new(nav_params)

    respond_to do |format|
      if @nav.save
        format.html { redirect_to nav_url(@nav), notice: "Nav was successfully created." }
        format.json { render :show, status: :created, location: @nav }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @nav.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /navs/1 or /navs/1.json
  def update
    respond_to do |format|
      if @nav.update(nav_params)
        format.html { redirect_to nav_url(@nav), notice: "Nav was successfully updated." }
        format.json { render :show, status: :ok, location: @nav }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @nav.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /navs/1 or /navs/1.json
  def destroy
    @nav.destroy

    respond_to do |format|
      format.html { redirect_to navs_url, notice: "Nav was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nav
      @nav = Nav.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def nav_params
      params.require(:nav).permit(:code, :active, :name, :language_id)
    end
end
