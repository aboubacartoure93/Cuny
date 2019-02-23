require 'test_helper'

class OtherArticlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @other_article = other_articles(:one)
  end

  test "should get index" do
    get other_articles_url
    assert_response :success
  end

  test "should get new" do
    get new_other_article_url
    assert_response :success
  end

  test "should create other_article" do
    assert_difference('OtherArticle.count') do
      post other_articles_url, params: { other_article: { availableNow: @other_article.availableNow, condition: @other_article.condition, othersDescription: @other_article.othersDescription, othersLocation: @other_article.othersLocation, othersPrice: @other_article.othersPrice, othersType: @other_article.othersType, student_id: @other_article.student_id } }
    end

    assert_redirected_to other_article_url(OtherArticle.last)
  end

  test "should show other_article" do
    get other_article_url(@other_article)
    assert_response :success
  end

  test "should get edit" do
    get edit_other_article_url(@other_article)
    assert_response :success
  end

  test "should update other_article" do
    patch other_article_url(@other_article), params: { other_article: { availableNow: @other_article.availableNow, condition: @other_article.condition, othersDescription: @other_article.othersDescription, othersLocation: @other_article.othersLocation, othersPrice: @other_article.othersPrice, othersType: @other_article.othersType, student_id: @other_article.student_id } }
    assert_redirected_to other_article_url(@other_article)
  end

  test "should destroy other_article" do
    assert_difference('OtherArticle.count', -1) do
      delete other_article_url(@other_article)
    end

    assert_redirected_to other_articles_url
  end
end
