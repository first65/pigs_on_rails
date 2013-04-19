class SlaughtersController < ApplicationController
  # GET /slaughters
  # GET /slaughters.json
  def index
    @slaughters = Slaughter.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @slaughters }
    end
  end

  # GET /slaughters/1
  # GET /slaughters/1.json
  def show
    @slaughter = Slaughter.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @slaughter }
    end
  end

  # GET /slaughters/new
  # GET /slaughters/new.json
  def new
    @slaughter = Slaughter.new
    @pigs = Pig.where(slaughter_id: nil)
    
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @slaughter }
    end
  end

  # GET /slaughters/1/edit
  def edit
    @slaughter = Slaughter.find(params[:id])
    @pigs = Pig.where(slaughter_id: [nil, @slaughter.id])
  end

  # POST /slaughters
  # POST /slaughters.json
  def create
    @slaughter = Slaughter.new(params[:slaughter])

    respond_to do |format|
      if @slaughter.save
        format.html { redirect_to @slaughter, notice: 'Slaughter was successfully created.' }
        format.json { render json: @slaughter, status: :created, location: @slaughter }
      else
        format.html { render action: "new" }
        format.json { render json: @slaughter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /slaughters/1
  # PUT /slaughters/1.json
  def update
    @slaughter = Slaughter.find(params[:id])

    respond_to do |format|
      if @slaughter.update_attributes(params[:slaughter])
        format.html { redirect_to @slaughter, notice: 'Slaughter was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @slaughter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /slaughters/1
  # DELETE /slaughters/1.json
  def destroy
    @slaughter = Slaughter.find(params[:id])
    @slaughter.destroy

    respond_to do |format|
      format.html { redirect_to slaughters_url }
      format.json { head :no_content }
    end
  end
end
