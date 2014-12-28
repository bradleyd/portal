defmodule PortalTest do
  use ExUnit.Case

  test "orange door is empty" do
    Portal.shoot(:orange)
    assert [] == Portal.Door.get(:orange)
  end

  test "blue door has 1" do
    Portal.shoot(:orange)
    Portal.shoot(:blue)
    portal = Portal.transfer(:orange, :blue, [1])
    Portal.push_right(portal)
    assert [1] == Portal.Door.get(:blue)
  end
end
