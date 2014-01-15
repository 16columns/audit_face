require 'prawn'
class AuditsController < ApplicationController
    before_filter :authenticate_user!, only: [:new]
  # GET /audits
  # GET /audits.json
  def index
      
    @audits= Audit.paginate(:page => params[:page], :per_page => 3).order('id DESC')
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @audits }
    end

  end

  # GET /audits/1
  # GET /audits/1.json
  def show
    @audit = Audit.find(params[:id])
    @findings= @audit.findings.paginate(:page => params[:page], :per_page => 7).order('id DESC')
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @audit }
     
    end
  end

  # GET /audits/new
  # GET /audits/new.json
  def new
    @audit = Audit.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @audit }
    end
  end

  # GET /audits/1/edit
  def edit
    @audit = Audit.find(params[:id])
    
  end

  # POST /audits
  # POST /audits.json
  def create
    @audit = current_user.audits.new(params[:audit])
    audit = params[:audit]
    start_date = DateTime.new(params["audit"]["start_date(1i)"].to_i, params["audit"]["start_date(2i)"].to_i,params["audit"]["start_date(3i)"].to_i,
                                                                    params["audit"]["start_date(4i)"].to_i,params["audit"]["start_date(5i)"].to_i)
    
    end_date = DateTime.new(params["audit"]["end_date(1i)"].to_i, params["audit"]["end_date(2i)"].to_i,params["audit"]["end_date(3i)"].to_i,
                                                                    params["audit"]["end_date(4i)"].to_i,params["audit"]["end_date(5i)"].to_i)
     @all_audits = Audit.where("auditor_email = ? or auditee_email = ?",params[:audit][:auditor_email], params[:audit][:auditee_email])
    
      @all_audits.each do |audit|
             if (audit.start_date.to_i..audit.end_date.to_i).include?(start_date.to_i||end_date.to_i)
                 @audit.errors[:base] << "Date is already assigned,please select another date "
                 break
             end 
         end 
    
    respond_to do |format|
       if  @audit.errors.any?
            format.html { render action: "new" }
            format.json { render json: @audit.errors, status: :unprocessable_entity }       
       elsif @audit.save
        format.html { redirect_to audits_path, notice: 'Audit was successfully created.' }
        format.json { render json: @audit, status: :created, location: @audit }
      else
        format.html { render action: "new" }
        format.json { render json: @audit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /audits/1
  # PUT /audits/1.json
  def update
    @audit = Audit.find(params[:id])

    respond_to do |format|
      if @audit.update_attributes(params[:audit])
        format.html { redirect_to @audit, notice: 'Audit was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @audit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /audits/1
  # DELETE /audits/1.json
  def destroy
 
    @audit = Audit.find(params[:id])
    @audit.destroy
  

    respond_to do |format|
      format.html { redirect_to audits_url }
      format.json { head :no_content }
    end
  end
  
  def export_findings
#     @audits= Audit.paginate(:page => params[:page], :per_page => 3).order('id DESC')
#     respond_to do |format|
#       format.html # index.html.erb
#       format.json { render json: @audits }
#     end
    # respond_to do |format|
    #     format.pdf { render :layout => false }
    # end    
    puts "**********action working********************"
      Prawn::Document.generate("test.pdf") do |pdf|
     table_data = [[Prawn::Table::Cell::Text.new( pdf, [0,0], :content => "<b>1. Row example text</b> \n\nExample Text Not Bolded", :inline_format => true), "433"],
                   [Prawn::Table::Cell::Text.new( pdf, [0,0], :content => "<b>2. Row example text</b>", :inline_format => true), "2343"],
                   [Prawn::Table::Cell::Text.new( pdf, [0,0], :content => "<b>3. Row example text</b>", :inline_format => true), "342"],                    
                   [Prawn::Table::Cell::Text.new( pdf, [0,0], :content => "<b>4. Row example text</b>", :inline_format => true), "36"]]

    pdf.table(table_data,:width => 500)
end
    send_data("test.pdf", :filename => "test.pdf", :type => "application/pdf") 
   end
   
   private 
    def generate_pdf
        # Prawn::Document.new do
        #     text "Hello World"
        # end.render 
      
    end
end
