require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
  test "should not save article with missing title" do
    article = Article.new("author" => "Scot Bot", "content" => "I like turtles")
    assert_not article.save, "An untitled article was saved."
  end
  
  test "should not save article with missing author" do
    article = Article.new("title" => "Turtles are AWESOME", "content" => "I like turtles")
    assert_not article.save, "An authorless article was saved."
  end
  
  test "should not save article with missing content" do
    article = Article.new("title" => "I like trains", "author" => "Daily asdfnews")
    assert_not article.save, "An article was saved without content."
  end
  
  test "should not save article with short content" do
    article = Article.new("title" => "I like trains", "author" => "Scot Bot", "content" => "Potato")
    assert_not article.save, "An article was saved, but the content was very short (less than 50 characters)."
  end
end
