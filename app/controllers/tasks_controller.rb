class TasksController < ApplicationController
  before_action :set_task, only: %i[ show edit update destroy ]

  # GET /tasks or /tasks.json
  def index
    @user= current_user
    @tasks = @user.tasks
     respond_to do |format|
    format.html
    format.json { @task = @tasks.search(params[:term]) }
  end
  end

  # GET /tasks/1 or /tasks/1.json
  def show
  
  end

  # GET /tasks/new
  def new
    @task = Task.new
  end

  # GET /tasks/1/edit
  def edit
      
  end
  def search
    if params[:search].blank?  
      redirect_to(tasks_path, alert: "Empty field!") and return  
    else  
       @user= current_user
      @parameter = params[:search].downcase  
      @results = @user.tasks.all.where("lower(todo) LIKE :search OR LOWER(category) LIKE :search", search: @parameter)  
    end  
  end
    def self.search(term)
      # @user= current_user
      # @parameter = params[:search].downcase  
      # @results = @user.tasks.all.where("lower(todo) LIKE :search", search: @parameter) 
      where('LOWER(todo) LIKE :term OR LOWER(category) LIKE :term', term: "%#{term.downcase}%")
    end

  # POST /tasks or /tasks.json
  def create
    @task = Task.new(task_params)

    respond_to do |format|
      if @task.save
        format.html { redirect_to @task, notice: "Task was successfully created." }
        format.json { render :show, status: :created, location: @task }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end
  
  

      


  # PATCH/PUT /tasks/1 or /tasks/1.json
  def update
     
      if params[:remove_attachment]=='1'
          @task.remove_avatars!
          @task.save
      end

    respond_to do |format|
      if @task.update(task_params)
        format.html { redirect_to @task, notice: "Task was successfully updated." }
        format.json { render :show, status: :ok, location: @task }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tasks/1 or /tasks/1.json
  def destroy
    @task.destroy
    respond_to do |format|
      format.html { redirect_to tasks_url, notice: "Task was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task
      @task = Task.find(params[:id])
    end


    # Only allow a list of trusted parameters through.
    def task_params
      params.require(:task).permit(:todo, :category, :due_date, :priority, :user_id, {avatars: []}, :completed)
    end
end
