defmodule Attachment do
  use Ecto.Schema

  import Ecto.Changeset

  @primary_key false

  embedded_schema do
    field(:name, :string)
    field(:url, :string)
  end

  def changeset(attachment, params) do
    attachment
    |> cast(params, ~w(name url)a)
    |> validate_required(:url)
  end
end
