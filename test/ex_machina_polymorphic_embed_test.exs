defmodule ExMachinaPolymorphicEmbedTest do
  use ExUnit.Case

  import ExMachinaPolymorphicEmbed.Factory
  alias ExMachinaPolymorphicEmbed.Repo

  test "can insert polymorphic embeds with ex machina factory" do
    Supervisor.start_link([ExMachinaPolymorphicEmbed.Repo], strategy: :one_for_one)

    post =
      insert(:post,
        title: "Hello, world!",
        body: "This is a post about saying hello to the world",
        attachment: %Attachment{name: "test attachment", url: "http://example.com/hello.jpg"}
      )

    assert %Post{
             title: "Hello, world!",
             body: "This is a post about saying hello to the world",
             attachment: %Attachment{name: "test attachment", url: "http://example.com/hello.jpg"}
           } = Repo.get!(Post, post.id)
  end
end
