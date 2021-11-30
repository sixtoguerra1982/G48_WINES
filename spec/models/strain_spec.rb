require 'rails_helper'

RSpec.describe Strain, type: :model do
  it 'is not valid without name' do
   strain = Strain.create(name: nil)
   expect(strain).to_not be_valid
  end

  it 'name is unique' do
    strain_one = Strain.create(name: "merlot")
    strain_two = Strain.create(name: "merlot")
    expect(strain_two).to_not be_valid
  end
end
