import Config

config :ex_machina_polymorphic_embed, ExMachinaPolymorphicEmbed.Repo,
  database: "ex_machina_polymorphic_embed",
  username: "postgres",
  password: "postgres",
  hostname: "localhost"

config :ex_machina_polymorphic_embed, ecto_repos: [ExMachinaPolymorphicEmbed.Repo]
