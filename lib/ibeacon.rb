module Beacon
  class Ibeacon
    # {entered: { uuid: "FFEFFFFF-FFFF-FFFF-FFFF-FFFFFFFFFFFF", major: 1, minor: 662, rssi: -62, power: -59 }}
    def parse_advertisement(raw)
      return eval(raw)
    end
  end
end