require "./test_helper"

class BinarySearchTreeTest < Minitest::Test
  def setup
    @tree = BinarySearchTree.new
    @tree.insert(85, "Star Wars")
    @tree.insert(90, "Empire Strikes Back")
  end

  def test_it_exists
    assert_instance_of BinarySearchTree, @tree
  end

  def test_tree_starts_with_no_nodes
    tree = BinarySearchTree.new
    assert_equal [], tree.nodes
  end

  def test_nodes_can_be_inserted
    @tree.insert(87, "Return of the Jedi")
    assert_equal 3, @tree.nodes.count
  end

  def test_inserting_node_returns_depth_value
    tree = BinarySearchTree.new
    expected0 = tree.insert(80, "TestRoot")
    assert_equal 0, expected0

    expected1 = tree.insert(81, "Test81")
    assert_equal 1, expected1

    expected2 = tree.insert(51, "Test51")
    assert_equal 1, expected2

    expected3 = tree.insert(90, "Test90")
    assert_equal 2, expected3
  end

  def test_included_scores_can_be_checked
    assert_equal true, @tree.include?(85)
    assert_equal false, @tree.include?(6)
  end

  def test_depth_of_score_can_be_checked
    assert_equal 1, @tree.depth_of(90)
    assert_equal 0, @tree.depth_of(85)
    assert_nil @tree.depth_of(8)
  end
end
