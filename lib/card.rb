



class Card

  attr_accessor :suit, :rank

  def initialize(suit, rank)
    @suit, @rank = suit, rank
  end



end
# let(:queen_of_hearts) { Card.new("Hearts", "Q") }
#
# it "Queen of Hearts has a rank of Q" do
#     expect(queen_of_hearts.rank).to eq("Q")
# end
#
# it "Queen of Hearts has a suit of Hearts" do
#     expect(queen_of_hearts.suit).to eq("Hearts")
# end
