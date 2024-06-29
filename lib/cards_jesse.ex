defmodule Deck do
  def create_deck do
    list_of_values = [
      "Ace",
      "2",
      "3",
      "4",
      "5",
      "6",
      "7",
      "8",
      "9",
      "10",
      "Jack",
      "Queen",
      "King"
    ]

    list_of_suits = ["Hearts", "Diamonds", "Clubs", "Spades"]
    for suit <- list_of_suits, value <- list_of_values, do: "#{value} of #{suit}"
  end

  def shuffle(deck) do
    Enum.shuffle(deck)
  end

  def deal(deck, hand_size) do
    Enum.split(deck, hand_size)
  end
end

# IO.inspect(deck)
