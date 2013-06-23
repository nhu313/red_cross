class DwellingTypesController < ApplicationController
  # GET /dwelling_types
  # GET /dwelling_types.json
  def index
    @dwelling_types = DwellingType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @dwelling_types }
    end
  end

  # GET /dwelling_types/1
  # GET /dwelling_types/1.json
  def show
    @dwelling_type = DwellingType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @dwelling_type }
    end
  end

  # GET /dwelling_types/new
  # GET /dwelling_types/new.json
  def new
    @dwelling_type = DwellingType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @dwelling_type }
    end
  end

  # GET /dwelling_types/1/edit
  def edit
    @dwelling_type = DwellingType.find(params[:id])
  end

  # POST /dwelling_types
  # POST /dwelling_types.json
  def create
    @dwelling_type = DwellingType.new(params[:dwelling_type])

    respond_to do |format|
      if @dwelling_type.save
        format.html { redirect_to @dwelling_type, notice: 'Dwelling type was successfully created.' }
        format.json { render json: @dwelling_type, status: :created, location: @dwelling_type }
      else
        format.html { render action: "new" }
        format.json { render json: @dwelling_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /dwelling_types/1
  # PUT /dwelling_types/1.json
  def update
    @dwelling_type = DwellingType.find(params[:id])

    respond_to do |format|
      if @dwelling_type.update_attributes(params[:dwelling_type])
        format.html { redirect_to @dwelling_type, notice: 'Dwelling type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @dwelling_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dwelling_types/1
  # DELETE /dwelling_types/1.json
  def destroy
    @dwelling_type = DwellingType.find(params[:id])
    @dwelling_type.destroy

    respond_to do |format|
      format.html { redirect_to dwelling_types_url }
      format.json { head :no_content }
    end
  end
end
