class Clock
  attr_reader :hour, :minute

  def self.at(hour, minute)
    new(hour, minute)
  end

  def initialize(hour, minute)
    @hour = hour
    @minute = minute
  end

  def to_s
    "#{"%02i" % ((hour + (minute / 60)) % 24) }:#{"%02i" % (minute % 60)}"
  end

  def +(number)
    @minute += number
    self
  end

  def ==(other)
    to_s == other.to_s
  end
end

module BookKeeping
  VERSION = 2
end
