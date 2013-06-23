class DisasterTypesController < ApplicationController
  # GET /disaster_types
  # GET /disaster_types.json
  def index
    @disaster_types = DisasterType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @disaster_types }
    end
  end

  # GET /disaster_types/1
  # GET /disaster_types/1.json
  def show
    @disaster_type = DisasterType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @disaster_type }
    end
  end

  # GET /disaster_types/new
  # GET /disaster_types/new.json
  def new
    @disaster_type = DisasterType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @disaster_type }
    end
  end

  # GET /disaster_types/1/edit
  def edit
    @disaster_type = DisasterType.find(params[:id])
  end

  # POST /disaster_types
  # POST /disaster_types.json
  def create
    @disaster_type = DisasterType.new(params[:disaster_type])

    respond_to do |format|
      if @disaster_type.save
        format.html { redirect_to @disaster_type, notice: 'Disaster type was successfully created.' }
        format.json { render json: @disaster_type, status: :created, location: @disaster_type }
      else
        format.html { render action: "new" }
        format.json { render json: @disaster_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /disaster_types/1
  # PUT /disaster_types/1.json
  def update
    @disaster_type = DisasterType.find(params[:id])

    respond_to do |format|
      if @disaster_type.update_attributes(params[:disaster_type])
        format.html { redirect_to @disaster_type, notice: 'Disaster type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @disaster_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /disaster_types/1
  # DELETE /disaster_types/1.json
  def destroy
    @disaster_type = DisasterType.find(params[:id])
    @disaster_type.destroy

    respond_to do |format|
      format.html { redirect_to disaster_types_url }
      format.json { head :no_content }
    end
  end
end
