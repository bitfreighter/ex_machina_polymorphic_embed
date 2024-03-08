# ExMachinaPolymorphicEmbed

This is a silly (hopefully temporary) fix for the ongoing incompatibility between ExMachina and PolymorphicEmbed libraries.
Stolen from this pull request: https://github.com/mathieuprog/polymorphic_embed/pull/26

## Installation

```elixir
def deps do
  [
    {:ex_machina_polymorphic_embed, "~> 0.1.1", only: :test}
  ]
end
```

## Usage 

In your factory replace `use ExMachina.Ecto, YourApp.Repo` with `ExMachinaPolymorphicEmbed.Ecto, repo: YourApp.Repo`

