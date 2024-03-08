defmodule ExMachinaPolymorphicEmbed.Repo do
  use Ecto.Repo,
    otp_app: :ex_machina_polymorphic_embed,
    adapter: Ecto.Adapters.Postgres
end
