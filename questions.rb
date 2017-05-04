#about_hashes.rb
def test_default_value
  hash1 = Hash.new
  hash1[:one] = 1

  assert_equal 1, hash1[:one]
  assert_equal nil, hash1[:two]

#This one didn't work for me
  hash2 = Hash.new("dos")
  hash2[:one] = 1

  assert_equal 1, hash2[:one]
  assert_equal "dos", hash2[:two]
end

#about_regular_expiressions - In fact - i should go through this properly
def test_scan_is_like_find_all
  assert_equal ["one", "two", "three"], "one two-three".scan(/\w+/)
end

#no idea
def test_sub_is_like_find_and_replace
  assert_equal "one t-three", "one two-three".sub(/(t\w*)/) { $1[0, 1] }
end

def test_gsub_is_like_find_and_replace_all
  assert_equal "one t-t", "one two-three".gsub(/(t\w*)/) { $1[0, 1] }
end

#about constants - did not study too well

#AboutIteration
def test_each_is_a_method_on_arrays
  assert_equal true, [].methods.include?(as_name(:each))
end

def test_inject_will_blow_your_mind
  result = [2, 3, 4].inject(0) { |sum, item| sum + item }
  assert_equal __, result

  result2 = [2, 3, 4].inject(1) { |product, item| product * item }
  assert_equal __, result2

  #AboutBlocks

  #Where the fuck does JIM come from
  #Ok i know.
  def test_stand_alone_blocks_can_be_passed_to_methods_expecting_blocks
    make_upper = lambda { |n| n.upcase }
    result = method_with_block_arguments(&make_upper)
    assert_equal "JIM", result
  end

  #about_dice_project
  #WTF HOWDid this just go fom 1/5 to 5/5
  class DiceSet

    def roll(number)
      @number = number
      @a = []
      i = 0
      while i < @number
        @a << rand(1..6)
        i += 1
      end
    end

    attr_accessor :number, :a

    def values
      return @a
    end
  end

#ALL OF ABOUT PROXY OBJECT!!!
