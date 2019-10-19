defmodule ItemsApiTest do
  use ExUnit.Case
  doctest ItemsApi

  test "greets the world" do
    assert ItemsApi.hello() == :world
  end
end
