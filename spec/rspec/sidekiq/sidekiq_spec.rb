require "spec_helper"

describe RSpec::Sidekiq do
  describe "#configure" do
    it "returns configuration" do
      expect(RSpec::Sidekiq.configure).to eq RSpec::Sidekiq.configuration
    end

    it "yields with configuration" do
      expect{ |block| RSpec::Sidekiq.configure(&block) }.to yield_with_args RSpec::Sidekiq.configuration
    end
  end

  describe "#configuration" do
    it "returns instance" do
      expect(RSpec::Sidekiq.configuration).to be_a RSpec::Sidekiq::Configuration
    end
  end
end