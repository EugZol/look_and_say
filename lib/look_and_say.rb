class LookAndSay
  # Здесь используем массив чисел в качестве входа и выхода
  def self.next(previous)
    previous.
      # https://ruby-doc.org/core-2.6.4/Enumerable.html#method-i-chunk_while
      chunk_while { |left, right| left == right }.
      # https://ruby-doc.org/core-2.6.4/Enumerable.html#method-i-each_with_object
      each_with_object([]) do |chunk, result|
        result << chunk.length
        result << chunk.first
      end
  end

  include Enumerable

  def initialize(initial = "1")
    @current = initial.chars.map(&:to_i)
  end

  def each
    loop do
      yield @current.join
      @current = self.class.next(@current)
    end
  end
end
