defmodule NervesGrpcTest do
  use ExUnit.Case
  doctest NervesGrpc

  test "greets the world" do
    assert NervesGrpc.hello() == :world
  end
end
