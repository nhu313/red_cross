class IncidentAssistancesController < ApplicationController
  # GET /incident_assistances
  # GET /incident_assistances.json
  def index
    @incident_assistances = IncidentAssistance.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @incident_assistances }
    end
  end

  # GET /incident_assistances/1
  # GET /incident_assistances/1.json
  def show
    @incident_assistance = IncidentAssistance.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @incident_assistance }
    end
  end

  # GET /incident_assistances/new
  # GET /incident_assistances/new.json
  def new
    @incident_assistance = IncidentAssistance.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @incident_assistance }
    end
  end

  # GET /incident_assistances/1/edit
  def edit
    @incident_assistance = IncidentAssistance.find(params[:id])
  end

  # POST /incident_assistances
  # POST /incident_assistances.json
  def create
    @incident_assistance = IncidentAssistance.new(params[:incident_assistance])

    respond_to do |format|
      if @incident_assistance.save
        format.html { redirect_to @incident_assistance, notice: 'Incident assistance was successfully created.' }
        format.json { render json: @incident_assistance, status: :created, location: @incident_assistance }
      else
        format.html { render action: "new" }
        format.json { render json: @incident_assistance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /incident_assistances/1
  # PUT /incident_assistances/1.json
  def update
    @incident_assistance = IncidentAssistance.find(params[:id])

    respond_to do |format|
      if @incident_assistance.update_attributes(params[:incident_assistance])
        format.html { redirect_to @incident_assistance, notice: 'Incident assistance was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @incident_assistance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /incident_assistances/1
  # DELETE /incident_assistances/1.json
  def destroy
    @incident_assistance = IncidentAssistance.find(params[:id])
    @incident_assistance.destroy

    respond_to do |format|
      format.html { redirect_to incident_assistances_url }
      format.json { head :no_content }
    end
  end
end
