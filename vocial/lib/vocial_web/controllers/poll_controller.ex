defmodule VocialWeb.PollController do
  use VocialWeb, :controller


  @spec index(any(), any()) :: none()
  def index(conn, params) do
    polls = Vocial.Votes.list_polls()

    conn
    |> put_layout(:special)
    |> render("index.html", polls: polls)
  end

  def new(conn, params) do
    poll = Vocial.Votes.new_poll()

    conn
    |> put_layout("special.html")
    |> render "new.html", poll: poll
  end

end
