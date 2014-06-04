require 'spec_helper'

describe Thing do
  subject { FactoryGirl.create(:thing) }

  it 'should be valid when given a name' do
    subject.should be_valid
  end

  it 'should not be valid without a name' do 
    subject.name = nil 
    subject.should_not be_valid
  end

  it 'should still be valid without a description' do 
    subject.description = nil 
    subject.should be_valid
  end

  it 'should not accept a thing with name character length less than 2' do 
    subject.name = "X" 
    subject.should_not be_valid
  end

  it 'should not accept a thing with name character length greater than 100' do 
    subject.name = "x" * 101
    subject.should_not be_valid
  end

  it 'should accept a thing with name character length of 100' do 
    subject.name = "x" * 100 
    subject.should be_valid 
  end

  it 'should not accept a thing with description character length greater than 1000' do 
    subject.description = "x" * 1001 
    subject.should_not be_valid
  end

  it 'should accept a thing with description character length of 1000' do 
    subject.description = "x" * 1000 
    subject.should be_valid
  end
end
