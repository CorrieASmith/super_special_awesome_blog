require 'rails_helper'

describe Content do
  it { should validate_presence_of :description }
  it { should belong_to :post }
end
