require 'rails_helper'
describe NavUi do 
   context “When testing the NavUi class” do 
      
      it "should go to 'Queries page' when we call the queries_click method" do 
         nvinstance = NavUi.new 
         nvinstance.queries_click()
         currenturl = request.original_url
         expect(currenturl).to eq "/queries.html"
      end
      
      it "should go to 'Team page' when we call the team_click method" do 
         nvinstance = NavUi.new 
         nvinstance.team_click()
         currenturl = request.original_url
         expect(currenturl).to eq "/team.html"
      end
      
      it "should go to 'Contact page' when we call the contact_click method" do 
         nvinstance = NavUi.new 
         nvinstance.contact_click()
         currenturl = request.original_url
         expect(currenturl).to eq "/contact.html"
      end
      
      it "should go to 'Home page' when we call the home_click method" do 
         nvinstance = NavUi.new 
         nvinstance.home_click()
         currenturl = request.original_url
         expect(currenturl).to eq "/homepage.html"
      end
      
   end
end