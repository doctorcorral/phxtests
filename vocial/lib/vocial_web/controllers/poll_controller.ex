defmodule VocialWeb.PollController do
  use VocialWeb, :controller


  @spec index(any(), any()) :: none()
  def index(conn, params) do
    poll = %{
      title: "Primer poll bergas",
      options: [
        {"Choice 1", 0},
        {"Choice 2", 5},
        {"Choice 3", 2}
      ]
    }
    conn
    |> put_layout(:special)
    |> render("index.html", poll: poll)
  end

end
