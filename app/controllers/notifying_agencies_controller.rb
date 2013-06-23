class NotifyingAgenciesController < ApplicationController
  # GET /notifying_agencies
  # GET /notifying_agencies.json
  def index
    @notifying_agencies = NotifyingAgency.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @notifying_agencies }
    end
  end

  # GET /notifying_agencies/1
  # GET /notifying_agencies/1.json
  def show
    @notifying_agency = NotifyingAgency.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @notifying_agency }
    end
  end

  # GET /notifying_agencies/new
  # GET /notifying_agencies/new.json
  def new
    @notifying_agency = NotifyingAgency.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @notifying_agency }
    end
  end

  # GET /notifying_agencies/1/edit
  def edit
    @notifying_agency = NotifyingAgency.find(params[:id])
  end

  # POST /notifying_agencies
  # POST /notifying_agencies.json
  def create
    @notifying_agency = NotifyingAgency.new(params[:notifying_agency])

    respond_to do |format|
      if @notifying_agency.save
        format.html { redirect_to @notifying_agency, notice: 'Notifying agency was successfully created.' }
        format.json { render json: @notifying_agency, status: :created, location: @notifying_agency }
      else
        format.html { render action: "new" }
        format.json { render json: @notifying_agency.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /notifying_agencies/1
  # PUT /notifying_agencies/1.json
  def update
    @notifying_agency = NotifyingAgency.find(params[:id])

    respond_to do |format|
      if @notifying_agency.update_attributes(params[:notifying_agency])
        format.html { redirect_to @notifying_agency, notice: 'Notifying agency was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @notifying_agency.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /notifying_agencies/1
  # DELETE /notifying_agencies/1.json
  def destroy
    @notifying_agency = NotifyingAgency.find(params[:id])
    @notifying_agency.destroy

    respond_to do |format|
      format.html { redirect_to notifying_agencies_url }
      format.json { head :no_content }
    end
  end
end
