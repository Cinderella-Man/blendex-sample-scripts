defmodule CityGrid do
  @moduledoc """
  Documentation for `City Grid`.
  """

  @doc """
  Hello world.
  """

  alias Blendex.Ops

  def draw_graphic() do

    spacing = 2.2

    data = 1..10
    |> Enum.map(fn x ->
      1..10
      |> Enum.map(fn y ->
        z = :rand.uniform(100) / 100 * 2
        Ops.Mesh.primitive_cube_add(
          size: 2,
          scale: [1, 1, 1],
          location: [x * spacing, y * spacing, z],
          enter_editmode: False,
          align: "WORLD",
          name: "Square-#{x}-#{y}"
        )
      end)
    end)
    |> List.flatten()

    Blendex.generate_commands(data)
  end
end

CityGrid.draw_graphic()
