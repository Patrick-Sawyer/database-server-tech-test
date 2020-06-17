require_relative '../../models/getset.rb'

describe GetSet do
  it 'saves to db, and can be retrieved' do 
    GetSet.create(key: 'test3', value: 'response3')
    expect(GetSet.where(key: 'test3')[0][:value]).to eq 'response3'
  end
end