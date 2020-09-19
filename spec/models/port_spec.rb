require 'rails_helper'

RSpec.describe Port do
  describe '#create' do
       # 1
   it "is OK to create with name of port?" do
     port1 = Port.new(name: "TEST")
     expect(port1.save).to be_falsey
   end  
        # 1
   it "is OK to create with name and address of port?" do
     port2 = Port.new(name: "TEST", address: "Kushiro")
     expect(port2.save).to be_falsey
   end 
   
    it "is OK to create new port with all info ?" do
      port3 = Port.new(
          id: 4,
          name: "Test",
          address: "Kushiro",
          information: "Kushiro",
          detail: "Kushiro",
          summary: "Kushiro",
          rep_name1: "Kushiro",
          rep_info1: "Kushiro",
          rep_name2: "Kushiro",
          rep_info2: "Kushiro",
          admin_id: 22,
          )
     expect(port3.save).to be_falsey
  end        
end
end


