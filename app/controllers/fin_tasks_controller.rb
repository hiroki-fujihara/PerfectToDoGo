class FinTasksController < ApplicationController
  before_action :set_fin_task, only: [:show, :edit, :update, :destroy]

  # GET /fin_tasks
  # GET /fin_tasks.json
  def index
    @fin_tasks = FinTask.all
  end

  # GET /fin_tasks/1
  # GET /fin_tasks/1.json
  def show
  end

  # GET /fin_tasks/new
  def new
    @fin_task = FinTask.new
  end

  # GET /fin_tasks/1/edit
  def edit
  end

  # POST /fin_tasks
  # POST /fin_tasks.json
  def create
    @fin_task = FinTask.new(fin_task_params)

    respond_to do |format|
      if @fin_task.save
        format.html { redirect_to @fin_task, notice: '作成完了！' }
        format.json { render :show, status: :created, location: @fin_task }
      else
        format.html { render :new }
        format.json { render json: @fin_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fin_tasks/1
  # PATCH/PUT /fin_tasks/1.json
  def update
    respond_to do |format|
      if @fin_task.update(fin_task_params)
        format.html { redirect_to @fin_task, notice: '編集完了！' }
        format.json { render :show, status: :ok, location: @fin_task }
      else
        format.html { render :edit }
        format.json { render json: @fin_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fin_tasks/1
  # DELETE /fin_tasks/1.json
  def destroy
    @fin_task.destroy
    respond_to do |format|
      format.html { redirect_to fin_tasks_url, notice: '削除完了！' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fin_task
      @fin_task = FinTask.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fin_task_params
      params.require(:fin_task).permit(:fin_day, :task_id)
    end
end
