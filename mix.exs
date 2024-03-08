defmodule ExMachinaPolymorphicEmbed.MixProject do
  use Mix.Project

  def project do
    [
      app: :ex_machina_polymorphic_embed,
      version: "0.1.0",
      description: "Temporary fix for ex_machina and polymorphic_embed",
      elixir: "~> 1.15",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      elixirc_paths: elixirc_paths(Mix.env()),
      package: package()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ex_machina, "~> 2.7.0", only: :test},
      {:ecto_sql, "~> 3.0"},
      {:postgrex, ">= 0.0.0"},
      {:polymorphic_embed, "~> 3.0.5"},
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false}
    ]
  end

  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_), do: ["lib"]

  defp package do
    [
      name: "ex_machina_polymorphic_embed",
      licenses: ["MIT"],
      organization: "hexpm",
      files: ["lib", "mix.exs", "README.*"],
      links: %{
        "Docs" => "https://hexdocs.pm/ex_machina_polymorphic_embed",
        "GitHub" => "https://github.com/bitfreighter/ex_machina_polymorphic_embed"
      },
      source_url: "https://github.com/bitfreighter/ex_machina_polymorphic_embed",
      homepage_url: "https://github.com/bitfreighter"
    ]
  end
end
