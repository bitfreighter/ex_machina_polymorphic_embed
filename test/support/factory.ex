defmodule ExMachinaPolymorphicEmbed.Factory do
  use ExMachinaPolymorphicEmbed.Ecto, repo: ExMachinaPolymorphicEmbed.Repo

  def post_factory do
    %Post{
      title: sequence(:title, &"title-#{&1}"),
      body: "body"
    }
  end
end
