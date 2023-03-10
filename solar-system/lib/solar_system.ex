defmodule SolarSystem do
  @moduledoc """
  Documentation for `Solar System`.
  """

  @doc """
  Hello world.
  """

  alias Blendex.Ops

  def draw_graphic() do
    x = 1

    data = 1..6
    |> Enum.map(fn n ->
      radius = 1 + rand() * 4
      distance_from_sun = 30 + n * 12 + (rand() * 4 - 2)
      Ops.Mesh.primitive_uv_sphere_add(
        radius: radius,
        location: [distance_from_sun, 1, 1],
        scale: [1, 1, 1],
        name: "Planet-#{n}"
      )
    end)
    |> List.flatten()

    Blendex.generate_commands(data)
  end

  defp rand() do
    :rand.uniform(100) / 100
  end
end

SolarSystem.draw_graphic()
