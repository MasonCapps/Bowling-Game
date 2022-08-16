require_relative "bowling-game"

RSpec.describe BowlingGame do
  describe "#simple_score" do
    it "returns the score of a 'simple' bowling game" do
      pins = [1, 5, 4, 4, 8, 0, 5, 3, 0, 0, 4, 5, 2, 3, 8, 1, 7, 1, 1, 1]
      subject = described_class.new

      expect(subject.simple_score(pins)).to eq(63)
    end
  end

  describe "#simple_score2" do
    it "returns the score of a 'simple' bowling game" do
      pins = [1, 5, 4, 4, 8, "-", 5, 3, "-", "-", 4, 5, 2, 3, 8, 1, 7, 1, 1, 1]
      subject = described_class.new

      expect(subject.simple_score2(pins)).to eq(63)
    end
  end

  describe "#spares" do
    it "returns the score of a 'simple' bowling game" do
      pins = [1, 5, 4, 4, 8, "/", 5, 3, "-", "-", 4, 5, 2, 3, 8, "/", 7, 1, 1, 1]
      subject = described_class.new

      expect(subject.spares(pins)).to eq(78)
    end
  end

  describe "#strikes" do
    it "returns the score of a 'simple' bowling game" do
      pins = [1, 5, 4, 4, 8, "/", 5, 3, "X", 4, 5, 2, 3, 8, "/", 7, 1, 1, 1]
      subject = described_class.new

      expect(subject.strikes(pins)).to eq(97)
    end
  end

  describe "#running_marks" do
    it "returns the score of a 'simple' bowling game" do
      pins = [1, 5, 4, 4, 8, "/", 5, 3, "X", 4, "/", 2, 3, 8, "/", 7, 1, 1, 1]
      subject = described_class.new

      expect(subject.running_marks(pins)).to eq(101)
    end
  end

  describe "#running_strikes" do
    it "returns the score of a 'simple' bowling game" do
      pins = [1, 5, 4, 4, 8, "/", 5, 3, "X", "X", 2, 3, 8, "/", 7, 1, 1, 1]
      subject = described_class.new

      expect(subject.running_strikes(pins)).to eq(106)
    end
  end

  describe "#late_strike" do
    it "returns the score of a 'simple' bowling game" do
      pins = [1, 5, 4, 4, 8, "/", 5, 3, "X", "X", 2, 3, 8, "/", "X", 1, 1]
      subject = described_class.new

      expect(subject.late_strike(pins)).to eq(106)
    end
  end
end
