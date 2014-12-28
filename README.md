Portal
======

Playing with Elixir

[Credit](https://howistart.org/posts/elixir/1)

## Usage

```elixir
iex> Portal.shoot(:orange)
{:ok, #PID<0.72.0>}
iex> Portal.shoot(:blue)
{:ok, #PID<0.74.0>}
iex> portal = Portal.transfer(:orange, :blue, [1, 2, 3, 4])
#Portal<
       :orange <=> :blue
  [1, 2, 3, 4] <=> []
>

iex> Portal.push_right(portal)
#Portal<
    :orange <=> :blue
  [1, 2, 3] <=> [4]
>
```
