# encoding: utf-8

require 'spec_helper'

describe Shrouded::Jobs::Store do
  let(:type) { 'test_files' }
  let(:hash) { '8843d7f92416211de9ebb963ff4ce28125932878' }
  let(:job) { Shrouded::Jobs::Store.new }

  describe "#perform" do
    it "should perform the job" do
      expect(Shrouded::Storage).to receive(:delayed_store).with(type, hash)
      job.perform(type, hash)
    end
  end
end
