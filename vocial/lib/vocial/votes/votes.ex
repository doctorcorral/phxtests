defmodule Vocial.Votes do
  import Ecto.Query, warn: false

  alias Vocial.Repo
  alias Vocial.Votes.Poll
  alias Vocial.Votes.Option

  def list_polls do
    Repo.all(Poll) |> Repo.preload(:options)
  end

  def new_poll do
    Poll.changeset(%Poll{}, %{})
  end

  def create_poll_with_options(poll_attrs, options) do
    Repo.transaction(fn ->
      with {:ok, poll} <- create_poll(poll_attrs),
           {:ok, options} <- create_options(options, poll)
      do
        poll
      else
        _ -> Repo.rollback("Failed to create poll :c")
      end
    end)
  end

end
