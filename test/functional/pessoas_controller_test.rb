require 'test_helper'

class PessoasControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:pessoas)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_pessoa
    assert_difference('Pessoa.count') do
      post :create, :pessoa => { }
    end

    assert_redirected_to pessoa_path(assigns(:pessoa))
  end

  def test_should_show_pessoa
    get :show, :id => pessoas(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => pessoas(:one).id
    assert_response :success
  end

  def test_should_update_pessoa
    put :update, :id => pessoas(:one).id, :pessoa => { }
    assert_redirected_to pessoa_path(assigns(:pessoa))
  end

  def test_should_destroy_pessoa
    assert_difference('Pessoa.count', -1) do
      delete :destroy, :id => pessoas(:one).id
    end

    assert_redirected_to pessoas_path
  end
end
