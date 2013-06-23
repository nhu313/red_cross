class EthnicitiesController < ApplicationController
  # GET /ethnicities
  # GET /ethnicities.json
  def index
    @ethnicities = Ethnicity.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ethnicities }
    end
  end

  # GET /ethnicities/1
  # GET /ethnicities/1.json
  def show
    @ethnicity = Ethnicity.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ethnicity }
    end
  end

  # GET /ethnicities/new
  # GET /ethnicities/new.json
  def new
    @ethnicity = Ethnicity.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ethnicity }
    end
  end

  # GET /ethnicities/1/edit
  def edit
    @ethnicity = Ethnicity.find(params[:id])
  end

  # POST /ethnicities
  # POST /ethnicities.json
  def create
    @ethnicity = Ethnicity.new(params[:ethnicity])

    respond_to do |format|
      if @ethnicity.save
        format.html { redirect_to @ethnicity, notice: 'Ethnicity was successfully created.' }
        format.json { render json: @ethnicity, status: :created, location: @ethnicity }
      else
        format.html { render action: "new" }
        format.json { render json: @ethnicity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ethnicities/1
  # PUT /ethnicities/1.json
  def update
    @ethnicity = Ethnicity.find(params[:id])

    respond_to do |format|
      if @ethnicity.update_attributes(params[:ethnicity])
        format.html { redirect_to @ethnicity, notice: 'Ethnicity was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ethnicity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ethnicities/1
  # DELETE /ethnicities/1.json
  def destroy
    @ethnicity = Ethnicity.find(params[:id])
    @ethnicity.destroy

    respond_to do |format|
      format.html { redirect_to ethnicities_url }
      format.json { head :no_content }
    end
  end
end
