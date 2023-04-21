defmodule UsersApix.Repo do
  use Ecto.Repo,
    otp_app: :users_apix,
    adapter: Ecto.Adapters.Postgres
end
