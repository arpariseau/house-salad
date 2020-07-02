require "rails_helper"

describe Member do
  it "exists" do
    member_data = {
      name: "Ian Douglas",
      district: "1",
      role: "Representative",
      party: "Canadian"
    }

    member = Member.new(member_data)
    expect(member).to be_a Member
    expect(member.name).to eq("Ian Douglas")
    expect(member.district).to eq("1")
    expect(member.role).to eq("Representative")
    expect(member.party).to eq("Canadian")

  end
end
