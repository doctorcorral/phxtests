defmodule VocialWeb.PollController do
  use VocialWeb, :controller


  @spec index(any(), any()) :: none()
  def index(conn, params) do
    conn
    |> put_layout(:special)
    |> render("index.html")
  end

end
