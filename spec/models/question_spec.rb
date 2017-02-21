require 'rails_helper'

describe Question do
  it { should validate_presence_of :author }
  it { should validate_presence_of :author }
  it { should validate_presence_of :author }
  it { should belong_to :list }
end
