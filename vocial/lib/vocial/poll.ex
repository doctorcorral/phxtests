defmodule Vocial.Votes.Poll do
  use Ecto.Schema
  import Ecto.Changeset
  alias Vocial.Votes.Poll

  schema "polls" do
    field :title, :string

    timestamps()
  end

end
