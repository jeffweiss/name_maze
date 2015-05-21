class StringToBitmask
  def self.to_mask(string, size: 16)
    mask = Array.new(size, "")
    chars = string.chars
    chars.each do |letter|
      lines = File.readlines("letters/#{size}x#{size}/#{letter}").map { |line| line.strip }
      lines.each_with_index do |line, index|
        mask[index] = mask[index] + line + 'XX'
      end
    end

    mask.join("\n")
  end
end
