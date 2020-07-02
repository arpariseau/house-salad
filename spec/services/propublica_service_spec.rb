require 'rails_helper'

describe PropublicaService do
  context "instance methods" do
    context "#state_house_members" do
      it "returns member data" do
        service = PropublicaService.new
        search = service.house_members("CO")
        expect(search).to be_a Hash
        expect(search[:results]).to be_an Array
        member_data = search[:results].first

        expect(member_data).to have_key :name
        expect(member_data).to have_key :role
        expect(member_data).to have_key :district
        expect(member_data).to have_key :party
      end
    end
  end
end
