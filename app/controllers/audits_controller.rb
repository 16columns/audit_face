
class AuditsController < ApplicationController
    before_filter :authenticate_user!, only: [:new]
    require 'prawn'
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
       if @audit.errors.any?
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
    audit = Audit.find(params[:audit_id].to_i)

# # item = Consolidation.find_all_by_customer_id_and_status(params[:customer_id],true).map do |item|
# # [
# # item.settlement_date.strftime("%m/%d/%Y"),
# # item.settlement_amount,
# # item.ach_conf_code,
# # ]
# # end
# item.unshift(["Date","Settlement Amount","ACH Reference"])
 pdf = Prawn::Document.new
    pdf.text "#{audit.department_name}"
    pdf.move_down 15
    pdf.font_size 8
    pdf.text "Start Date : " +  audit.start_date.strftime('%Y-%m-%d') + "   End Date : " + audit.start_date.strftime('%Y-%m-%d') + "  Audit Risk Rating :"+ "    "+ "Status : "+ "Not Started" 
      # pdf.table item, row_colors: ['DDDDDD','EFEFEF'], header: true
    pdf.move_down 20
    number=0
    audit.findings.each do |finding|
      pdf.text "Finding #{number += 1}"
      pdf.move_down 5
      pdf.text "Description: " + finding.description
      pdf.move_down 5
      pdf.text "Corrective Action : " + finding.corrective_action
      pdf.move_down 5
      pdf.text "Preventive Action : " + finding.preventive_action
      pdf.move_down 5
      pdf.text "Finding Risk : " + finding.risk_rating + "      Finding Status : " + finding.status_id
      pdf.move_down 10
    end  
      filename = File.join(Rails.root, "/public", "findings.pdf")
      pdf.render_file filename
      
      send_data pdf.render, :filename => "findings.pdf", :type => "application/pdf"
   end
 end
