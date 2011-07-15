class BillDetailsController < ApplicationController
  # GET /bill_details
  # GET /bill_details.json
  def index
    @bill_details = BillDetail.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @bill_details }
    end
  end

  # GET /bill_details/1
  # GET /bill_details/1.json
  def show
    @bill_detail = BillDetail.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @bill_detail }
    end
  end

  # GET /bill_details/new
  # GET /bill_details/new.json
  def new
    @bill_detail = BillDetail.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @bill_detail }
    end
  end

  # GET /bill_details/1/edit
  def edit
    @bill_detail = BillDetail.find(params[:id])
  end

  # POST /bill_details
  # POST /bill_details.json
  def create
    @bill_detail = BillDetail.new(params[:bill_detail])

    respond_to do |format|
      if @bill_detail.save
        format.html { redirect_to @bill_detail, :notice => 'Bill detail was successfully created.' }
        format.json { render :json => @bill_detail, :status => :created, :location => @bill_detail }
      else
        format.html { render :action => "new" }
        format.json { render :json => @bill_detail.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /bill_details/1
  # PUT /bill_details/1.json
  def update
    @bill_detail = BillDetail.find(params[:id])

    respond_to do |format|
      if @bill_detail.update_attributes(params[:bill_detail])
        format.html { redirect_to @bill_detail, :notice => 'Bill detail was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @bill_detail.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /bill_details/1
  # DELETE /bill_details/1.json
  def destroy
    @bill_detail = BillDetail.find(params[:id])
    @bill_detail.destroy

    respond_to do |format|
      format.html { redirect_to bill_details_url }
      format.json { head :ok }
    end
  end
end
