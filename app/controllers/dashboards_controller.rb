class DashboardsController < ApplicationController
  # GET /dashboards
  # GET /dashboards.json
  def index
    @audits = current_user.audits.find(:all)
    
    @finding_count =0
    @open_audits_count = 0
    @open_audits = []
    @upcoming_audits = []
    
    @audits.each do |audit|
      audit.findings.each do|finding|
        @finding_count += 1       
      end
    end
    
    @audits.each do |audit|
      audit.findings.each do|finding|
        if finding.status_id != "Closed" && (Time.now.to_date - finding.created_at.to_date).to_i >=30
          @open_audits_count += 1
          @open_audits << audit
          break
        end 
      end
    end
    
    @upcoming_audits = current_user.audits.where('start_date >= ?',Time.now)
    
    @findings = Finding.find(:all)
   # months = ['Jan','Feb', 'Mar','Apr','May','Jun','Jul','Aug','Sep','Oct', 'Nov','Dec']
   # col_chart = [[]]
   # months.each_with_index do |month,index|
      
  #    col_chart[index] = Array.new
  #    col_chart[index] = ['1','2','3']
  #  end   
  #  puts "**************this is the col chart**********"
  #  puts col_chart
  #  puts "***********************************************"
    # testing data from index for google col chart
    #dataTable.addColumn(["one", "two", "three","four"]);
    #    <% current_user.audits.each do |audit| %>
    #          dataTable.addRow([<%= audit.id %>,<%= audit.id %> ,<%= audit.id %> ,<%= audit.id %>]) 
    #    <%end%>  
    #      alert("*************"+dataTable);
    audits = Audit.all
    #audits.each do |audit|
    #  @data_table.add_row([audit.created_at, audit.start_date, audit.start_date, audit.start_date])
    #end
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @audits }
    end
  end

  # GET /dashboards/1
  # GET /dashboards/1.json
 
 end