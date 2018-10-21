defmodule Vicial.VotesTest do
  use Vocial.DataCase

  alias Vocial.Votes

  describe "polls" do
    @valid_attrs %{ titles: "Hellou"}

    def poll_fixture(attrs \\ %{}) do
      with create_args <- Enum.into(attrs, @valid_attrs),
      {:ok, poll} <- Votes.create_poll(create_attrs),
      poll <- Repo.preload(poll, :options)
      do
        poll

      end
    end


  end

end
