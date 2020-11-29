require 'rails_helper'

RSpec.describe Manufacturer, type: :model do
  it { should validate_presence_of :title }
  it { should validate_presence_of :description }
  it { should have_many :products }

end
