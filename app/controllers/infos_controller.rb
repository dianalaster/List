class InfosController < ApplicationController
  # GET /infos
  # GET /infos.json
  def index
    @infos = Info.order("created_at DESC").all
    @info = Info.new
  end

  # GET /infos/1
  # GET /infos/1.json
  def show
    @info = Info.find(params[:id])
  end

  # GET /infos/new
  # GET /infos/new.json
  def new
    @info = Info.new
  end

  # GET /infos/1/edit
  def edit
    @info = Info.find(params[:id])
  end

  # POST /infos
  # POST /infos.json
  def create
    @info = Info.new(params[:info])

    if @info.save
      redirect_to :action => 'index'
    else
      render :action => "new"
    end
  end

  # PUT /infos/1
  # PUT /infos/1.json
  def update
    @info = Info.find(params[:id])

    respond_to do |format|
      if @info.update_attributes(params[:info])
        format.html { redirect_to @info, :notice => 'Info was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @info.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /infos/1
  # DELETE /infos/1.json
  def destroy
    @info = Info.find(params[:id])
    @info.destroy

    respond_to do |format|
      format.html { redirect_to infos_url }
      format.json { head :no_content }
    end
  end
end
