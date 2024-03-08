defmodule Post do
  use Ecto.Schema

  import PolymorphicEmbed

  schema "posts" do
    field(:title, :string)
    field(:body, :string)

    polymorphic_embeds_one(:attachment,
      types: [attachment: Attachment],
      on_type_not_found: :raise,
      on_replace: :update
    )

    timestamps()
  end
end
