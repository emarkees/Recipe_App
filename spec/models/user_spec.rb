require 'rails_helper'

describe 'User Model Tests' do
  user = User.new(name: 'sa', email: 'aelkholy60@gmail.com', password: '432dsa364#')

  it 'should be vaild user' do
    expect(user).to be_valid
  end

  it 'should not be vaild if does not have a email' do
    user.email = ''
    expect(user).to_not be_valid
    user.email = 'aelkholy60@gmail.com'
  end

  it 'should not be vaild if does not have a password' do
    user.password = ''
    expect(user).to_not be_valid
    user.password = '432dsa364%'
  end
end
