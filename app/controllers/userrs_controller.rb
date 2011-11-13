class UserrsController < ApplicationController
  # GET /userrs
  # GET /userrs.json
  def index
    @userrs = Userr.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @userrs }
    end
  end

  # GET /userrs/1
  # GET /userrs/1.json
  def show
    @userr = Userr.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @userr }
    end
  end

  # GET /userrs/new
  # GET /userrs/new.json
  def new
    @userr = Userr.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @userr }
    end
  end

  # GET /userrs/1/edit
  def edit
    @userr = Userr.find(params[:id])
  end

  # POST /userrs
  # POST /userrs.json
  def create
    @userr = Userr.new(params[:userr])

    respond_to do |format|
      if @userr.save
        format.html { redirect_to @userr, notice: 'Userr was successfully created.' }
        format.json { render json: @userr, status: :created, location: @userr }
      else
        format.html { render action: "new" }
        format.json { render json: @userr.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /userrs/1
  # PUT /userrs/1.json
  def update
    @userr = Userr.find(params[:id])

    respond_to do |format|
      if @userr.update_attributes(params[:userr])
        format.html { redirect_to @userr, notice: 'Userr was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @userr.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /userrs/1
  # DELETE /userrs/1.json
  def destroy
    @userr = Userr.find(params[:id])
    @userr.destroy

    respond_to do |format|
      format.html { redirect_to userrs_url }
      format.json { head :ok }
    end
  end
end
