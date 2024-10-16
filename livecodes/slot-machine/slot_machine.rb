class SlotMachine
  ITEMS = %w[🍒 7️⃣ 🛎 ⭐️ 🤩]

  def initialize(reels = %w[🤩 🤩 🤩])
    @reels = reels
  end

  def play
    60.times do
      shuffle
      print @reels.join("\t") + "\r"
      # \r is the 'return carriage' character to return to the beginning of the line
      $stdout.flush # clears the line in the terminal
      sleep(0.03)
    end
    sleep(0.5)
    shuffle
    @reels
  end

  def score
    if three_of_the_same?
      # Find the item that is repeated
      repeated_item = @reels[0]
      # Get the index + 1 of the item in the ITEMS array
      item_value = ITEMS.index(repeated_item) + 1
      # Multiply by 10
      item_value * 10
    elsif two_of_the_same_plus_joker?
      # Find the item that is repeated
      repeated_item = @reels.sort[1]
      # Get the index + 1 of the item in the ITEMS array
      item_value = ITEMS.index(repeated_item) + 1
      # Multiply by 5
      item_value * 5
    else
      0
    end
  end

  private

  def shuffle
    @reels = @reels.map { ITEMS.sample }
  end

  def three_of_the_same?
    @reels.uniq.count == 1
  end

  def two_of_the_same_plus_joker?
    @reels.uniq.count == 2 && @reels.include?("🤩")
  end
end