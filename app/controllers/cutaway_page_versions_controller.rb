class CutawayPageVersionsController < ApplicationController
  before_action :set_cutaway_page_version, only: %i[ show edit update destroy ]

  # GET /cutaway_page_versions or /cutaway_page_versions.json
  def index
    @cutaway_page_versions = CutawayPageVersion.all
  end

  # GET /cutaway_page_versions/1 or /cutaway_page_versions/1.json
  def show
  end

  # GET /cutaway_page_versions/new
  def new
    @cutaway_page_version = CutawayPageVersion.new
  end

  # GET /cutaway_page_versions/1/edit
  def edit
  end

  # POST /cutaway_page_versions or /cutaway_page_versions.json
  def create
    @cutaway_page_version = CutawayPageVersion.new(cutaway_page_version_params)

    respond_to do |format|
      if @cutaway_page_version.save
        format.html { redirect_to cutaway_page_version_url(@cutaway_page_version), notice: "Cutaway page version was successfully created." }
        format.json { render :show, status: :created, location: @cutaway_page_version }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cutaway_page_version.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cutaway_page_versions/1 or /cutaway_page_versions/1.json
  def update
    respond_to do |format|
      if @cutaway_page_version.update(cutaway_page_version_params)
        format.html { redirect_to cutaway_page_version_url(@cutaway_page_version), notice: "Cutaway page version was successfully updated." }
        format.json { render :show, status: :ok, location: @cutaway_page_version }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cutaway_page_version.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cutaway_page_versions/1 or /cutaway_page_versions/1.json
  def destroy
    @cutaway_page_version.destroy

    respond_to do |format|
      format.html { redirect_to cutaway_page_versions_url, notice: "Cutaway page version was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cutaway_page_version
      @cutaway_page_version = CutawayPageVersion.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cutaway_page_version_params
      params.require(:cutaway_page_version).permit(:name, :language_id, :header, :body, :index, :visible, :images, :cutaway_page_id, :route_link)
    end
end
