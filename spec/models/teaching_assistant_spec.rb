require 'spec_helper'

describe TeachingAssistant do
  it { expect(subject).to validate_presence_of(:name) }
  it { expect(subject).to validate_presence_of(:email) }
  it { expect(subject).to validate_presence_of(:bio) }
end
