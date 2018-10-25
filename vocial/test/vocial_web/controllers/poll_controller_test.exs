defmodule VocialWeb.PollControllerTest do
  use VocialWeb.ConnCase

  test "GET /polls ", %{conn: conn} do
    {:ok, poll} = Vocial.Votes.create_poll_with_options(%{title: "polguan"},
     ["choisguan", "choistu", "choisdri"])
     conn = get(conn,"/polls")
     assert html_response(conn, 200) =~ poll.title



  end
end
