defmodule ItemsApiTest do
  use ExUnit.Case
  doctest ItemsApi

  test "get all available items - should retrun empty array at first call" do
    ItemsApi.clear_db()
    assert ItemsApi.get_all_available_items() === []
  end


  test "insert item - should return :ok status" do
    assert elem(ItemsApi.insert_item("testItem"),0) === :ok
  end

  test "get all available items - should retrun one item" do
    ItemsApi.clear_db()
    ItemsApi.insert_item("testItem")
    assert length(ItemsApi.get_all_available_items()) === 1
  end

  test "delete item - should return :ok status" do
    ItemsApi.clear_db()
    ItemsApi.insert_item("testItem")
    item = ItemsApi.get_all_available_items()

    id = List.first(item) |> Map.fetch(:_id) |> elem(1)

    assert elem(ItemsApi.delete_item(id),0) === 1
  end

end
