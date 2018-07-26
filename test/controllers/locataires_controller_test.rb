require 'test_helper'

class LocatairesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @locataire = locataires(:one)
  end

  test "should get index" do
    get locataires_url
    assert_response :success
  end

  test "should get new" do
    get new_locataire_url
    assert_response :success
  end

  test "should create locataire" do
    assert_difference('Locataire.count') do
      post locataires_url, params: { locataire: { age: @locataire.age, contact: @locataire.contact, loyer: @locataire.loyer, name: @locataire.name, other: @locataire.other, place: @locataire.place, sexe: @locataire.sexe, surname: @locataire.surname } }
    end

    assert_redirected_to locataire_url(Locataire.last)
  end

  test "should show locataire" do
    get locataire_url(@locataire)
    assert_response :success
  end

  test "should get edit" do
    get edit_locataire_url(@locataire)
    assert_response :success
  end

  test "should update locataire" do
    patch locataire_url(@locataire), params: { locataire: { age: @locataire.age, contact: @locataire.contact, loyer: @locataire.loyer, name: @locataire.name, other: @locataire.other, place: @locataire.place, sexe: @locataire.sexe, surname: @locataire.surname } }
    assert_redirected_to locataire_url(@locataire)
  end

  test "should destroy locataire" do
    assert_difference('Locataire.count', -1) do
      delete locataire_url(@locataire)
    end

    assert_redirected_to locataires_url
  end
end
