class HealthsController < ApplicationController
  # GET /healths
  # GET /healths.json
  def index
    @healths = Health.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @healths }
    end
  end

  # GET /healths/1
  # GET /healths/1.json
  def show
    @health = Health.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @health }
    end
  end

  # GET /healths/new
  # GET /healths/new.json
  def new
    @health = Health.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @health }
    end
  end

  # GET /healths/1/edit
  def edit
    @health = Health.find(params[:id])
  end

  # POST /healths
  # POST /healths.json
  def create
    @health = Health.new(params[:health])

    respond_to do |format|
      if @health.save
        format.html { redirect_to @health, notice: 'Health was successfully created.' }
        format.json { render json: @health, status: :created, location: @health }
      else
        format.html { render action: "new" }
        format.json { render json: @health.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /healths/1
  # PUT /healths/1.json
  def update
    @health = Health.find(params[:id])

    respond_to do |format|
      if @health.update_attributes(params[:health])
        format.html { redirect_to @health, notice: 'Health was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @health.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /healths/1
  # DELETE /healths/1.json
  def destroy
    @health = Health.find(params[:id])
    @health.destroy

    respond_to do |format|
      format.html { redirect_to healths_url }
      format.json { head :no_content }
    end
  end
end
