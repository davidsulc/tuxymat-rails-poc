namespace :demo_data do
  namespace :load do
    desc 'Load admin and normal user in database'
    task :users => :environment do
      FactoryGirl.create(:admin, email: 'admin@example.com', password: 'password') unless User.find_by_email('admin@example.com')
      FactoryGirl.create(:user, email: 'user@example.com', password: 'password') unless User.find_by_email('user@example.com')
    end
    
    desc 'Load dummy application data'
    task :app_data => :environment do
      5.times do
        FactoryGirl.create(:contract) # will create linked vending machines and partners
      end
      
      # create a few vending machines without contracts
      FactoryGirl.create(:vending_machine)
      FactoryGirl.create(:vending_machine, age_verification: true)
    end
    
    desc 'Load all demo data in the database'
    task :all => [:users, :app_data]
  end
end