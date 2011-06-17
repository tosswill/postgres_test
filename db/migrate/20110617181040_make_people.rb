class MakePeople < ActiveRecord::Migration
  def self.up
    0.upto(1000) do
      Person.create(:name => Faker::Name.name  ,
       :address => Faker::Address.street_address ,
       :city => Faker::Address.city ,
       :state => Faker::Address.state ,
       :zip => Faker::Address.zip)
    end
  end

  def self.down
    Person.destroy_all
  end
end
