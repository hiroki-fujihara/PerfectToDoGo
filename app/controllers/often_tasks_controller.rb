class OftenTasksController < ApplicationController
  before_action :set_often_task, only: [:show, :edit, :update, :destroy]

  # GET /often_tasks
  # GET /often_tasks.json
  def index
    @often_tasks = OftenTask.all
  end

  # GET /often_tasks/1
  # GET /often_tasks/1.json
  def show
  end

  # GET /often_tasks/new
  def new
    @often_task = OftenTask.new
  end

  # GET /often_tasks/1/edit
  def edit
  end

  # POST /often_tasks
  # POST /often_tasks.json
  def create
    @often_task = OftenTask.new(often_task_params)

    respond_to do |format|
      if @often_task.save
        format.html { redirect_to @often_task, notice: '作成完了！' }
        format.json { render :show, status: :created, location: @often_task }
      else
        format.html { render :new }
        format.json { render json: @often_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /often_tasks/1
  # PATCH/PUT /often_tasks/1.json
  def update
    respond_to do |format|
      if @often_task.update(often_task_params)
        format.html { redirect_to @often_task, notice: '編集完了！' }
        format.json { render :show, status: :ok, location: @often_task }
      else
        format.html { render :edit }
        format.json { render json: @often_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /often_tasks/1
  # DELETE /often_tasks/1.json
  def destroy
    @often_task.destroy
    respond_to do |format|
      format.html { redirect_to often_tasks_url, notice: '削除完了！' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_often_task
      @often_task = OftenTask.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def often_task_params
      params.require(:often_task).permit(:name)
    end
end
