class OneweeksController < ApplicationController
  before_action :set_oneweek, only: [:show, :edit, :update, :destroy]

  # GET /oneweeks
  # GET /oneweeks.json
  def index
    @oneweeks = Task.all
  end

  # GET /oneweeks/1
  # GET /oneweeks/1.json
  def show
  end

  # GET /oneweeks/new
  def new
    @oneweek = Oneweek.new
  end

  # GET /oneweeks/1/edit
  def edit
  end

  # POST /oneweeks
  # POST /oneweeks.json
  def create
    @oneweek = Oneweek.new(oneweek_params)

    respond_to do |format|
      if @oneweek.save
        format.html { redirect_to @oneweek, notice: 'Oneweek was successfully created.' }
        format.json { render :show, status: :created, location: @oneweek }
      else
        format.html { render :new }
        format.json { render json: @oneweek.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /oneweeks/1
  # PATCH/PUT /oneweeks/1.json
  def update
    respond_to do |format|
      if @oneweek.update(oneweek_params)
        format.html { redirect_to @oneweek, notice: 'Oneweek was successfully updated.' }
        format.json { render :show, status: :ok, location: @oneweek }
      else
        format.html { render :edit }
        format.json { render json: @oneweek.errors, status: :unprocessable_entity }
      end
    end
  end

  def search  
    @name = params["search"]["name"] 
    @oneweeks = Task.where("name like '%#{params["search"]["name"]}%'")
    render :index  
  end  

  # DELETE /oneweeks/1
  # DELETE /oneweeks/1.json
  def destroy
    @oneweek.destroy
    respond_to do |format|
      format.html { redirect_to oneweeks_url, notice: 'Oneweek was successfully destroyed.' }
      format.json { head :no_content }
    end
  end   

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_oneweek
      @oneweek = Oneweek.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def oneweek_params
      params.require(:oneweek).permit(:renge, :name, :important, :file)
    end
end
