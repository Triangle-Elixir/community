defmodule Community.HomePageController do
  use Community.Web, :controller

  def show(conn, _params) do
    conn
    |> assign(:jobs, Community.Queries.Job.approved_jobs)
    |> render(:show)
  end
end
