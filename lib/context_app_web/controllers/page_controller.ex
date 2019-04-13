defmodule ContextAppWeb.PageController do
  use ContextAppWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
