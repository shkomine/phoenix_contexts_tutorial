defmodule ContextApp.Repo do
  use Ecto.Repo,
    otp_app: :context_app,
    adapter: Ecto.Adapters.Postgres
end
