class CutawayPagesController < ApplicationController
  before_action :set_cutaway_page, only: %i[ show edit update destroy ]
  before_action :unindex_all, only: %i[ create update ]

  # GET /cutaway_pages or /cutaway_pages.json
  def index
    @cutaway_pages = CutawayPage.all
  end

  # GET /cutaway_pages/1 or /cutaway_pages/1.json
  def show
  end

  # GET /cutaway_pages/new
  def new
    @cutaway_page = CutawayPage.new
  end

  # GET /cutaway_pages/1/edit
  def edit
  end

  # POST /cutaway_pages or /cutaway_pages.json
  def create
    @cutaway_page = CutawayPage.new(cutaway_page_params)

    respond_to do |format|
      if @cutaway_page.save
        format.html { redirect_to cutaway_page_url(@cutaway_page), notice: "Cutaway page was successfully created." }
        format.json { render :show, status: :created, location: @cutaway_page }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cutaway_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cutaway_pages/1 or /cutaway_pages/1.json
  def update
    respond_to do |format|
      if @cutaway_page.update(cutaway_page_params)
        format.html { redirect_to cutaway_page_url(@cutaway_page), notice: "Cutaway page was successfully updated." }
        format.json { render :show, status: :ok, location: @cutaway_page }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cutaway_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cutaway_pages/1 or /cutaway_pages/1.json
  def destroy
    @cutaway_page.destroy

    respond_to do |format|
      format.html { redirect_to cutaway_pages_url, notice: "Cutaway page was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    def unindex_all
      if cutaway_page_params[:index] == true || cutaway_page_params[:index] == "1" 
        CutawayPage.where(index: true).each do |cp|
          cp.update(index: false) if cp.index
        end  
      end  
    end  
    # Use callbacks to share common setup or constraints between actions.
    def set_cutaway_page
      @cutaway_page = CutawayPage.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cutaway_page_params
      params.require(:cutaway_page).permit(:parent_id, :name, :description, :index)
    end

    
end
