# frozen_string_literal: true
require 'spec_helper'

RSpec.describe "deprecations" do
  it "has the deprecation_horizon as the next major release" do
    allow(Money).to receive(:const_get).with('VERSION').and_return("1.2.3")
    expect(Money.active_support_deprecator.deprecation_horizon).to eq("2.0.0")
  end
end
