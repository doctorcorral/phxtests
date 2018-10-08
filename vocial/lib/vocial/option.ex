defmodule Vocial.Votes.Option do
  use Ecto.Schema
  import Ecto.Changeset
  alias Vocial.Votes.Option
  alias Vocial.Votes.Poll

  schema "options" do
    field :title, :string
    field :votes, :integer, default: 0

    belongs_to :poll, Poll
  end

end
