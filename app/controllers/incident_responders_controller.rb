class IncidentRespondersController < ApplicationController
  # GET /incident_responders
  # GET /incident_responders.json
  def index
    @incident_responders = IncidentResponder.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @incident_responders }
    end
  end

  # GET /incident_responders/1
  # GET /incident_responders/1.json
  def show
    @incident_responder = IncidentResponder.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @incident_responder }
    end
  end

  # GET /incident_responders/new
  # GET /incident_responders/new.json
  def new
    @incident_responder = IncidentResponder.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @incident_responder }
    end
  end

  # GET /incident_responders/1/edit
  def edit
    @incident_responder = IncidentResponder.find(params[:id])
  end

  # POST /incident_responders
  # POST /incident_responders.json
  def create
    @incident_responder = IncidentResponder.new(params[:incident_responder])

    respond_to do |format|
      if @incident_responder.save
        format.html { redirect_to @incident_responder, notice: 'Incident responder was successfully created.' }
        format.json { render json: @incident_responder, status: :created, location: @incident_responder }
      else
        format.html { render action: "new" }
        format.json { render json: @incident_responder.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /incident_responders/1
  # PUT /incident_responders/1.json
  def update
    @incident_responder = IncidentResponder.find(params[:id])

    respond_to do |format|
      if @incident_responder.update_attributes(params[:incident_responder])
        format.html { redirect_to @incident_responder, notice: 'Incident responder was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @incident_responder.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /incident_responders/1
  # DELETE /incident_responders/1.json
  def destroy
    @incident_responder = IncidentResponder.find(params[:id])
    @incident_responder.destroy

    respond_to do |format|
      format.html { redirect_to incident_responders_url }
      format.json { head :no_content }
    end
  end
end
