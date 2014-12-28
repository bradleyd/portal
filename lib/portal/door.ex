defmodule Portal.Door do
  @doc """
  Starts a door with the given `color`.

  The color is given as a name so we can identify
  the door by color name instead of using a PID.
  """
  def start_link(color) do
    Agent.start_link(fn -> [] end, name: color)
  end

  @doc """
  Get the data currently in the `door`
  """
  def get(door) do
    Agent.get(door, fn list -> list end)
  end

end
