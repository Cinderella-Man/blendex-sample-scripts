# Cosmos

```
mix run lib/cosmos.ex
```



```
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
  ```