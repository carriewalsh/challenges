require "./test_helper"

class NodeTest < Minitest::Test
  def setup
    @node1 = Node.new(70, "E.T.")
  end

  def test_it_exists
    assert_instance_of Node, @node1
  end

  def test_it_has_attributes
    assert_equal "E.T.", @node1.title
    assert_equal 70, @node1.score
  end

  def test_node_starts_with_no_family
    @node1.left = nil
    @node1.right = nil
    @node1.parent = nil
  end
end
