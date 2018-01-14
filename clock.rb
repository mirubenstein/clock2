class Clock
  def self.at(hour, minute)
    "#{"%02i" % ((hour + (minute / 60)) % 24) }:#{"%02i" % (minute % 60)}"
  end
end

module BookKeeping
  VERSION = 2
end
