#!/usr/bin/env ruby

require_relative "keygen"
require "test/unit"
require "benchmark"

class TestKeygen < Test::Unit::TestCase
  def setup
    @string = ("A".."Y").to_a.join
    @keygen = Keygen.new
  end

  def test_generate_key
    assert_equal "ABCDE-FGHIJ-KLMNO-PQRST-UVWXY", @keygen.generate_key(@string)
  end

  def test_performance
    Benchmark.bm do |b|
      b.report("time: ") do
        1_000_000.times { @keygen.generate_key @string }
      end
    end
  end
end
