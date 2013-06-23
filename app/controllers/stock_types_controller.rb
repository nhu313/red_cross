class StockTypesController < ApplicationController
  # GET /stock_types
  # GET /stock_types.json
  def index
    @stock_types = StockType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @stock_types }
    end
  end

  # GET /stock_types/1
  # GET /stock_types/1.json
  def show
    @stock_type = StockType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @stock_type }
    end
  end

  # GET /stock_types/new
  # GET /stock_types/new.json
  def new
    @stock_type = StockType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @stock_type }
    end
  end

  # GET /stock_types/1/edit
  def edit
    @stock_type = StockType.find(params[:id])
  end

  # POST /stock_types
  # POST /stock_types.json
  def create
    @stock_type = StockType.new(params[:stock_type])

    respond_to do |format|
      if @stock_type.save
        format.html { redirect_to @stock_type, notice: 'Stock type was successfully created.' }
        format.json { render json: @stock_type, status: :created, location: @stock_type }
      else
        format.html { render action: "new" }
        format.json { render json: @stock_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /stock_types/1
  # PUT /stock_types/1.json
  def update
    @stock_type = StockType.find(params[:id])

    respond_to do |format|
      if @stock_type.update_attributes(params[:stock_type])
        format.html { redirect_to @stock_type, notice: 'Stock type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @stock_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stock_types/1
  # DELETE /stock_types/1.json
  def destroy
    @stock_type = StockType.find(params[:id])
    @stock_type.destroy

    respond_to do |format|
      format.html { redirect_to stock_types_url }
      format.json { head :no_content }
    end
  end
end
