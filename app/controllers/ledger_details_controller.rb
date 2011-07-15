class LedgerDetailsController < ApplicationController
  # GET /ledger_details
  # GET /ledger_details.json
  def index
    @ledger_details = LedgerDetail.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @ledger_details }
    end
  end

  # GET /ledger_details/1
  # GET /ledger_details/1.json
  def show
    @ledger_detail = LedgerDetail.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @ledger_detail }
    end
  end

  # GET /ledger_details/new
  # GET /ledger_details/new.json
  def new
    @ledger_detail = LedgerDetail.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @ledger_detail }
    end
  end

  # GET /ledger_details/1/edit
  def edit
    @ledger_detail = LedgerDetail.find(params[:id])
  end

  # POST /ledger_details
  # POST /ledger_details.json
  def create
    @ledger_detail = LedgerDetail.new(params[:ledger_detail])

    respond_to do |format|
      if @ledger_detail.save
        format.html { redirect_to @ledger_detail, :notice => 'Ledger detail was successfully created.' }
        format.json { render :json => @ledger_detail, :status => :created, :location => @ledger_detail }
      else
        format.html { render :action => "new" }
        format.json { render :json => @ledger_detail.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /ledger_details/1
  # PUT /ledger_details/1.json
  def update
    @ledger_detail = LedgerDetail.find(params[:id])

    respond_to do |format|
      if @ledger_detail.update_attributes(params[:ledger_detail])
        format.html { redirect_to @ledger_detail, :notice => 'Ledger detail was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @ledger_detail.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /ledger_details/1
  # DELETE /ledger_details/1.json
  def destroy
    @ledger_detail = LedgerDetail.find(params[:id])
    @ledger_detail.destroy

    respond_to do |format|
      format.html { redirect_to ledger_details_url }
      format.json { head :ok }
    end
  end
end
