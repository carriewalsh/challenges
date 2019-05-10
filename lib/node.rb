class Node
  attr_reader :title, :score
  attr_accessor :parent, :left, :right
  def initialize(score, title)
    @score = score
    @title = title
    @left = nil
    @right = nil
    @parent = nil
  end
end
