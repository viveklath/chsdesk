class BillTransactionsController < ApplicationController
  # GET /bill_transactions
  # GET /bill_transactions.json
  def index
    @bill_transactions = BillTransaction.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @bill_transactions }
    end
  end

  # GET /bill_transactions/1
  # GET /bill_transactions/1.json
  def show
    @bill_transaction = BillTransaction.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @bill_transaction }
    end
  end

  # GET /bill_transactions/new
  # GET /bill_transactions/new.json
  def new
    @bill_transaction = BillTransaction.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @bill_transaction }
    end
  end

  # GET /bill_transactions/1/edit
  def edit
    @bill_transaction = BillTransaction.find(params[:id])
  end

  # POST /bill_transactions
  # POST /bill_transactions.json
  def create
    @bill_transaction = BillTransaction.new(params[:bill_transaction])

    respond_to do |format|
      if @bill_transaction.save
        format.html { redirect_to @bill_transaction, :notice => 'Bill transaction was successfully created.' }
        format.json { render :json => @bill_transaction, :status => :created, :location => @bill_transaction }
      else
        format.html { render :action => "new" }
        format.json { render :json => @bill_transaction.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /bill_transactions/1
  # PUT /bill_transactions/1.json
  def update
    @bill_transaction = BillTransaction.find(params[:id])

    respond_to do |format|
      if @bill_transaction.update_attributes(params[:bill_transaction])
        format.html { redirect_to @bill_transaction, :notice => 'Bill transaction was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @bill_transaction.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /bill_transactions/1
  # DELETE /bill_transactions/1.json
  def destroy
    @bill_transaction = BillTransaction.find(params[:id])
    @bill_transaction.destroy

    respond_to do |format|
      format.html { redirect_to bill_transactions_url }
      format.json { head :ok }
    end
  end
end
