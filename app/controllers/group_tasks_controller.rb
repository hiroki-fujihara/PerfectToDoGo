class GroupTasksController < ApplicationController
  before_action :set_group_task, only: [:show, :edit, :update, :destroy]

  # GET /group_tasks
  # GET /group_tasks.json
  def index
    @group_tasks = GroupTask.all
  end

  # GET /group_tasks/1
  # GET /group_tasks/1.json
  def show
  end

  # GET /group_tasks/new
  def new
    @group_task = GroupTask.new
  end

  # GET /group_tasks/1/edit
  def edit
  end

  # POST /group_tasks
  # POST /group_tasks.json
  def create
    @group_task = GroupTask.new(group_task_params)

    respond_to do |format|
      if @group_task.save
        format.html { redirect_to @group_task, notice: '作成完了！' }
        format.json { render :show, status: :created, location: @group_task }
      else
        format.html { render :new }
        format.json { render json: @group_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /group_tasks/1
  # PATCH/PUT /group_tasks/1.json
  def update
    respond_to do |format|
      if @group_task.update(group_task_params)
        format.html { redirect_to @group_task, notice: '編集完了！' }
        format.json { render :show, status: :ok, location: @group_task }
      else
        format.html { render :edit }
        format.json { render json: @group_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /group_tasks/1
  # DELETE /group_tasks/1.json
  def destroy
    @group_task.destroy
    respond_to do |format|
      format.html { redirect_to group_tasks_url, notice: '削除完了！' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_group_task
      @group_task = GroupTask.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def group_task_params
      params.require(:group_task).permit(:name, :group_id)
    end
end
