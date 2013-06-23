class EconomicStatusesController < ApplicationController
  # GET /economic_statuses
  # GET /economic_statuses.json
  def index
    @economic_statuses = EconomicStatus.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @economic_statuses }
    end
  end

  # GET /economic_statuses/1
  # GET /economic_statuses/1.json
  def show
    @economic_status = EconomicStatus.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @economic_status }
    end
  end

  # GET /economic_statuses/new
  # GET /economic_statuses/new.json
  def new
    @economic_status = EconomicStatus.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @economic_status }
    end
  end

  # GET /economic_statuses/1/edit
  def edit
    @economic_status = EconomicStatus.find(params[:id])
  end

  # POST /economic_statuses
  # POST /economic_statuses.json
  def create
    @economic_status = EconomicStatus.new(params[:economic_status])

    respond_to do |format|
      if @economic_status.save
        format.html { redirect_to @economic_status, notice: 'Economic status was successfully created.' }
        format.json { render json: @economic_status, status: :created, location: @economic_status }
      else
        format.html { render action: "new" }
        format.json { render json: @economic_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /economic_statuses/1
  # PUT /economic_statuses/1.json
  def update
    @economic_status = EconomicStatus.find(params[:id])

    respond_to do |format|
      if @economic_status.update_attributes(params[:economic_status])
        format.html { redirect_to @economic_status, notice: 'Economic status was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @economic_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /economic_statuses/1
  # DELETE /economic_statuses/1.json
  def destroy
    @economic_status = EconomicStatus.find(params[:id])
    @economic_status.destroy

    respond_to do |format|
      format.html { redirect_to economic_statuses_url }
      format.json { head :no_content }
    end
  end
end
