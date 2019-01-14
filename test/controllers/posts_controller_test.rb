require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  describe 'Post' do

    describe 'Index' do
      it 'displays all the posts' do
        expect(Post :index).to eq(@posts = Post.all)
      end
    end

  end

end
