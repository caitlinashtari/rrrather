require 'rails_helper'

describe Vote do
  it { should validate_presence_of :selection}
  it { should belong_to :question }
end
