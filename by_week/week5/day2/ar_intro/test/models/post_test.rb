require 'test_helper'

class PostTest < ActiveSupport::TestCase
  test "posts should have a title" do
    post = Post.new(:body => "Jesse Ventura",
                    :summary => "Pro wrestler, film star, statesman"
                    )
    assert_not post.save, "Post saved without a title"
  end
end
