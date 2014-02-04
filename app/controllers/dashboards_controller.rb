class DashboardsController < ApplicationController
  # GET /dashboards
  # GET /dashboards.json
  def index
    @audits = current_user.audits.find(:all)
    
    @finding_count =0
    @open_audits_count = 0
    @upcoming_audits = 0
    
    @audits.each do |audit|
      audit.findings.each do|finding|
        @finding_count += 1       
      end
    end
    
    @audits.each do |audit|
      audit.findings.each do|finding|
        if finding.status_id != "Closed"
          @open_audits_count += 1
          break
        end 
      end
    end
    
    @upcoming_audits = current_user.audits.where('start_date >= ?',Time.now)
    
    @findings = Finding.find(:all)
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @audits }
    end
  end

  # GET /dashboards/1
  # GET /dashboards/1.json
 
 end