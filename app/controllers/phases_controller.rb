class PhasesController < ApplicationController
  # GET /phases
  # GET /phases.json
  def index
    @project = Project.find(params[:project_id])
    @phases = @project.phases.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @phases }
    end
  end

  # GET /phases/1
  # GET /phases/1.json
  def show   
    @phase = Phase.find(params[:id])
    @project = Project.find(@phase.project_id)
    
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @phase }
    end
  end

  # GET /phases/new
  # GET /phases/new.json
  def new
    @project = Project.find(params[:project_id])
    @phase = @project.phases.build

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @phase }
    end
  end

  # GET /phases/1/edit
  def edit
    @phase = Phase.find(params[:id])
    @project = Project.find(@phase.project_id)
  end

  # POST /phases
  # POST /phases.json
  def create
    @project = Project.find(params[:project_id])
    @phase = @project.phases.build(params[:phase])

    respond_to do |format|
      if @phase.save
        format.html { redirect_to @phase, notice: 'Phase was successfully created.' }
        format.json { render json: @phase, status: :created, location: @phase }
      else
        format.html { render action: "new" }
        format.json { render json: @phase.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /phases/1
  # PUT /phases/1.json
  def update
    @phase = Phase.find(params[:id])

    respond_to do |format|
      if @phase.update_attributes(params[:phase])
        format.html { redirect_to @phase, notice: 'Phase was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @phase.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /phases/1
  # DELETE /phases/1.json
  def destroy
    @project = Project.find(params[:project_id])
    @phase = Phase.find(params[:id])
    @phase.destroy

    respond_to do |format|
      format.html { redirect_to project_phases_url(@project) }
      format.json { head :no_content }
    end
  end
end
