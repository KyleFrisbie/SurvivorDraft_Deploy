class DraftersController < ApplicationController
  before_action :authenticate_user!, :set_drafter, only: [:show, :edit, :update, :destroy]

  # GET /drafters
  # GET /drafters.json
  def index
    @drafters = Drafter.all
  end

  # GET /drafters/1
  # GET /drafters/1.json
  def show
  end

  # GET /drafters/new
  def new
    @drafter = Drafter.new
    @survivors = Survivor.all
  end

  # GET /drafters/1/edit
  def edit
    @survivors = Survivor.all
  end

  # POST /drafters
  # POST /drafters.json
  def create
    @drafter = Drafter.new(drafter_params)

    respond_to do |format|
      if @drafter.save
        format.html { redirect_to @drafter, notice: 'Drafter was successfully created.' }
        format.json { render :show, status: :created, location: @drafter }
      else
        format.html { render :new }
        format.json { render json: @drafter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /drafters/1
  # PATCH/PUT /drafters/1.json
  def update
    respond_to do |format|
      if @drafter.update(drafter_params)
        format.html { redirect_to @drafter, notice: 'Drafter was successfully updated.' }
        format.json { render :show, status: :ok, location: @drafter }
      else
        format.html { render :edit }
        format.json { render json: @drafter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /drafters/1
  # DELETE /drafters/1.json
  def destroy
    @drafter.destroy
    respond_to do |format|
      format.html { redirect_to drafters_url, notice: 'Drafter was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_drafter
      @drafter = Drafter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def drafter_params
      params.require(:drafter).permit(:user_id, :wins, :losses, :survivor_ids => [])
    end
end
