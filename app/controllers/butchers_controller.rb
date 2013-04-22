class ButchersController < ApplicationController
  # GET /butchers
  # GET /butchers.json
  def index
    @butchers = Butcher.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @butchers }
    end
  end

  # GET /butchers/1
  # GET /butchers/1.json
  def show
    @butcher = Butcher.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @butcher }
    end
  end

  # GET /butchers/new
  # GET /butchers/new.json
  def new
    @butcher = Butcher.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @butcher }
    end
  end

  # GET /butchers/1/edit
  def edit
    @butcher = Butcher.find(params[:id])
  end

  # POST /butchers
  # POST /butchers.json
  def create
    @butcher = Butcher.new(params[:butcher])

    respond_to do |format|
      if @butcher.save
        format.html { redirect_to @butcher, notice: 'Butcher was successfully created.' }
        format.json { render json: @butcher, status: :created, location: @butcher }
      else
        format.html { render action: "new" }
        format.json { render json: @butcher.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /butchers/1
  # PUT /butchers/1.json
  def update
    @butcher = Butcher.find(params[:id])

    respond_to do |format|
      if @butcher.update_attributes(params[:butcher])
        format.html { redirect_to @butcher, notice: 'Butcher was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @butcher.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /butchers/1
  # DELETE /butchers/1.json
  def destroy
    @butcher = Butcher.find(params[:id])
    @butcher.destroy

    respond_to do |format|
      format.html { redirect_to butchers_url }
      format.json { head :no_content }
    end
  end
end
