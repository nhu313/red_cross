class IncidentStockTypesController < ApplicationController
  # GET /incident_stock_types
  # GET /incident_stock_types.json
  def index
    @incident_stock_types = IncidentStockType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @incident_stock_types }
    end
  end

  # GET /incident_stock_types/1
  # GET /incident_stock_types/1.json
  def show
    @incident_stock_type = IncidentStockType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @incident_stock_type }
    end
  end

  # GET /incident_stock_types/new
  # GET /incident_stock_types/new.json
  def new
    @incident_stock_type = IncidentStockType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @incident_stock_type }
    end
  end

  # GET /incident_stock_types/1/edit
  def edit
    @incident_stock_type = IncidentStockType.find(params[:id])
  end

  # POST /incident_stock_types
  # POST /incident_stock_types.json
  def create
    @incident_stock_type = IncidentStockType.new(params[:incident_stock_type])

    respond_to do |format|
      if @incident_stock_type.save
        format.html { redirect_to @incident_stock_type, notice: 'Incident stock type was successfully created.' }
        format.json { render json: @incident_stock_type, status: :created, location: @incident_stock_type }
      else
        format.html { render action: "new" }
        format.json { render json: @incident_stock_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /incident_stock_types/1
  # PUT /incident_stock_types/1.json
  def update
    @incident_stock_type = IncidentStockType.find(params[:id])

    respond_to do |format|
      if @incident_stock_type.update_attributes(params[:incident_stock_type])
        format.html { redirect_to @incident_stock_type, notice: 'Incident stock type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @incident_stock_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /incident_stock_types/1
  # DELETE /incident_stock_types/1.json
  def destroy
    @incident_stock_type = IncidentStockType.find(params[:id])
    @incident_stock_type.destroy

    respond_to do |format|
      format.html { redirect_to incident_stock_types_url }
      format.json { head :no_content }
    end
  end
end
