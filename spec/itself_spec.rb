#!/usr/bin/env ruby
# coding: utf-8
require File.expand_path(File.dirname(__FILE__) + '/spec_helper')
array = [1, 2, 3, 4, 5, 1, 2, 2, 3]

describe "itself" do
  it "return same object so it is same identity" do
    string = 'my string'
    expect(string.itself.object_id == string.object_id).to be_truthy
  end
  
  it "can replace { |i| i } to (&:itself) for Enumerable" do
    expect(array.group_by(&:itself)).to eq({1=>[1, 1], 2=>[2, 2, 2], 3=>[3, 3], 4=>[4], 5=>[5]})
  end
end
