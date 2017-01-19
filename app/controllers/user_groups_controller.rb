class UserGroupsController < ApplicationController
  before_action :set_user_group, only: [:show, :edit, :update, :destroy]

  # GET /user_groups
  # GET /user_groups.json
  def index
    @user_groups = UserGroup.all
  end

  # GET /user_groups/1
  # GET /user_groups/1.json
  def show
  end

  # GET /user_groups/new
  def new
    @user_group = UserGroup.new
  end

  # GET /user_groups/1/edit
  def edit
  end

  # POST /user_groups
  # POST /user_groups.json
  def create
  upload_file = content_params[:upload_file]
  file = {}
  if upload_file != nil
    file[:upload_file] = upload_file.read
    file[:upload_file_name] = upload_file_original_filename
  end
  file[:password] = file_params[:password]
  @file = File.new(file)
  respond_to do |format|
    if @file.save
      format.html {redirect_to @content,notice: 'Upload success' }
      format.json {render action: 'show', status: :created, location: @content }
    else
      @file = File.all
      format.html {render action: 'index' }
      format.json {render json: @content.errors, status: :unprocessable_entity}
    end
  end
end

  # PATCH/PUT /user_groups/1
  # PATCH/PUT /user_groups/1.json
  def update
    respond_to do |format|
      if @user_group.update(user_group_params)
        format.html { redirect_to @user_group, notice: '編集完了！' }
        format.json { render :show, status: :ok, location: @user_group }
      else
        format.html { render :edit }
        format.json { render json: @user_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_groups/1
  # DELETE /user_groups/1.json
  def destroy
    @user_group.destroy
    respond_to do |format|
      format.html { redirect_to user_groups_url, notice: '削除完了！' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_group
      @user_group = UserGroup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_group_params
      params.require(:user_group).permit(:user_id, :group_id)
    end
end
