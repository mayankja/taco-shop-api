require 'rails_helper'

RSpec.describe Taco, type: :model do
  it { should validate_presence_of(:meat) }
end
