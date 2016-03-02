require 'rails_helper'

RSpec.describe Author, type: :model do
  it{ expect(subject).to validate_presence_of(:name) }
  it{ expect(subject).to validate_presence_of(:email) }
  it{ expect(subject).to have_many(:articles)}

  it 'valid factory' do
  	expect(build(:author)).to be_valid
  end

  context 'is invalid' do
  	it 'without name' do
  		author = build(:author , name: nil)
  		author.valid?
  		expect(author.errors[:name]).to include("can't be blank")
  	end
  	it 'without email'do
	  	author = build(:author, email: nil)
	  	author.valid?
	  	expect(author.errors[:email]).to include("can't be blank")
  	end
  end
end
