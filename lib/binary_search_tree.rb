class BinarySearchTree
  attr_reader :nodes, :root

  def initialize
    @nodes = []
    @root = nil
  end

  def insert(score, title)
    node = Node.new(score,title)
    @nodes << {node.title => node.score}
    if @root == nil
      @root = node
      depth = 0
    else
      current_node = @root
      depth = 1
      while node.parent == nil
        if node.score < current_node.score
          while current_node.left
            current_node = current_node.left
            depth += 1
          end
          current_node.left = node
          node.parent = current_node
        elsif node.score > current_node.score
          while current_node.right
            current_node = current_node.right
            depth += 1
          end
          current_node.right = node
          node.parent = current_node
        end
      end
      depth
    end
  end

  def include?(score)
    current_node = @root
    result = false
    while current_node != nil
      if score == current_node.score
        result = true
        break
      elsif score > current_node.score
        current_node = current_node.right
      elsif score < current_node.score
        current_node = current_node.left
      end
    end
    result
  end

  def depth_of(score)
    if include?(score) == false
      return nil
    else
      current_node = @root
      depth = 0
      result = nil
      while result == nil
        if depth == current_node.score
          result = "found"
          break
        elsif depth > current_node.score
          current_node = current_node.right
          depth += 1
        elsif depth > current_node.score
          current_node = current_node.left
          depth += 1
        end
      end
      return depth
    end
  end
end
