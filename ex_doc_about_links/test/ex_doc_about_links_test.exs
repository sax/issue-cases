defmodule ExDocAboutLinksTest do
  use ExUnit.Case
  doctest ExDocAboutLinks

  test "greets the world" do
    assert ExDocAboutLinks.hello() == :world
  end
end
