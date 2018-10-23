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

    test "list_polls/0 return and polls" do
      poll = poll_fixture()
      assert Votes.list_polls() == [poll]
    end

    test "new_poll/0 returns a blank changeset" do
      changeset = Votes.new_poll()
      assert changeset.__struct__ == Ecto.Changeset
    end

    test "create_poll/1 returns a new poll" do
      {ok, poll} = Votes.create_poll(@valid_attrs)
      assert Enum.any?(Votes.list_polls(), fn p -> p.id == poll.id end)
    end

  end

end
