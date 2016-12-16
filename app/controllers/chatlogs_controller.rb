class ChatlogsController < ApplicationController
  before_action :set_chatlog, only: [:show, :edit, :update, :destroy]

  # GET /chatlogs
  # GET /chatlogs.json
  def index
    @chatlogs = Chatlog.page(params[:page]).per(15)
    @chatlog = Chatlog.new
  end

  # GET /chatlogs/1
  # GET /chatlogs/1.json
  def show
  end

  # GET /chatlogs/new
  def new
    @chatlog = Chatlog.new
  end

  # GET /chatlogs/1/edit
  def edit
  end

  # POST /chatlogs
  # POST /chatlogs.json
  def create
    @chatlog = Chatlog.new(chatlog_params)

    respond_to do |format|
      if @chatlog.save
        format.html { redirect_to @chatlog, notice: '作成完了！' }
        format.json { render :index, status: :created, location: @chatlog }
      else
        format.html { render :new }
        format.json { render json: @chatlog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chatlogs/1
  # PATCH/PUT /chatlogs/1.json
  def update
    respond_to do |format|
      if @chatlog.update(chatlog_params)
        format.html { redirect_to @chatlog, notice: '編集完了！' }
        format.json { render :show, status: :ok, location: @chatlog }
      else
        format.html { render :edit }
        format.json { render json: @chatlog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chatlogs/1
  # DELETE /chatlogs/1.json
  def destroy
    @chatlog.destroy
    respond_to do |format|
      format.html { redirect_to chatlogs_url, notice: '削除完了！' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chatlog
      @chatlog = Chatlog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chatlog_params
      params.require(:chatlog).permit(:user_id, :content, :group_id)
    end
end
