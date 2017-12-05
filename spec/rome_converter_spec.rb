require 'rome_converter'

  RSpec.describe RomeConverter do

    it "checks for 0 convertion" do
      expect(RomeConverter.new.to_rome(0)).to be_nil
    end

    it "converts one to I" do
      expect(RomeConverter.new.to_rome(1)).to eq 'I'
    end

    it "converts two to II" do
      expect(RomeConverter.new.to_rome(2)).to eq 'II'
    end

      it "converts three to III" do
      expect(RomeConverter.new.to_rome(3)).to eq 'III'
    end

    it "converts four to IV" do
      expect(RomeConverter.new.to_rome(4)).to eq 'IV'
    end

    it "converts five to V" do
      expect(RomeConverter.new.to_rome(5)).to eq 'V'
    end

    it "converts nine to IX" do
      expect(RomeConverter.new.to_rome(9)).to eq 'IX'
    end

    it "converts ten to X" do
      expect(RomeConverter.new.to_rome(10)).to eq 'X'
    end

    it "converts fourty to XL " do
      expect(RomeConverter.new.to_rome(40)).to eq 'XL'
    end

    it "converts fifty to L" do
      expect(RomeConverter.new.to_rome(50)).to eq 'L'
    end

    it "converts ninety to XC" do
      expect(RomeConverter.new.to_rome(90)).to eq 'XC'
    end

    it "converts one-hundred to C" do
      expect(RomeConverter.new.to_rome(100)).to eq 'C'
    end

    it "converts four-hundred to CD" do
      expect(RomeConverter.new.to_rome(400)).to eq 'CD'
    end

    it "converts five-thousand to D" do
      expect(RomeConverter.new.to_rome(500)).to eq 'D'
    end

    it "converts nine-hundred to CM" do
      expect(RomeConverter.new.to_rome(900)).to eq 'CM'
    end

    it "converts one-thousand to M" do
      expect(RomeConverter.new.to_rome(1000)).to eq 'M'
    end

    it "converts four thousand nine hundred ninety nine to MMMMCMXCIX" do
      expect(RomeConverter.new.to_rome(4999)).to eq 'MMMMCMXCIX'
    end

    it "checks for 5000 convertion" do
      expect(RomeConverter.new.to_rome(5000)).to be_nil
    end

    it "check for empty" do
      expect(RomeConverter.new.to_dec('')).to be_nil
    end

    it "converts I to one" do
      expect(RomeConverter.new.to_dec('I')).to eq 1
    end

    it "converts II to two" do
      expect(RomeConverter.new.to_dec('II')).to eq 2
    end

    it "converts III to three" do
      expect(RomeConverter.new.to_dec('III')).to eq 3
    end

    it "converts IV  to four" do
      expect(RomeConverter.new.to_dec('IV')).to eq 4
    end

    it "converts V to five" do
      expect(RomeConverter.new.to_dec('V')).to eq 5
    end

    it "converts VI to six" do
      expect(RomeConverter.new.to_dec('VI')).to eq 6
    end

    it "converts VII to seven" do
      expect(RomeConverter.new.to_dec('VII')).to eq 7
    end

    it "converts VIII to eight" do
      expect(RomeConverter.new.to_dec('VIII')).to eq 8
    end

    it "converts IX to nine" do
      expect(RomeConverter.new.to_dec('IX')).to eq 9
    end

    it "converts X to ten" do
      expect(RomeConverter.new.to_dec('X')).to eq 10
    end

    it "converts XL to fourty " do
      expect(RomeConverter.new.to_dec('XL')).to eq 40
    end

    it "converts L to fifty" do
      expect(RomeConverter.new.to_dec('L')).to eq 50
    end

    it "converts XC to ninety" do
      expect(RomeConverter.new.to_dec('XC')).to eq 90
    end

    it "converts C to one-hundred" do
      expect(RomeConverter.new.to_dec('C')).to eq 100
    end

    it "converts CD to four-hundred" do
      expect(RomeConverter.new.to_dec('CD')).to eq 400
    end

    it "converts D to five-thousand" do
      expect(RomeConverter.new.to_dec('D')).to eq 500
    end

    it "converts CM to nine-hundred" do
      expect(RomeConverter.new.to_dec('CM')).to eq 900
    end

    it "converts M to one-thousand" do
      expect(RomeConverter.new.to_dec('M')).to eq 1000
    end

    it "converts MMMMCMXCIX to four thousand nine hundred ninety nine" do
      expect(RomeConverter.new.to_dec('MMMMCMXCIX')).to eq 4999
    end
    it "check for 5000 bad convertion" do
      expect(RomeConverter.new.to_dec('MMMMM')).to be_nil
    end

  end
