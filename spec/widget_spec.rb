require 'spec_helper'

describe Widget do 
  it 'has a count' do 
    expect{ Widget.create }.to change(Widget, :count).by(1)
  end
end