defmodule Neuranote.Repo do
  use Ecto.Repo,
    otp_app: :neuranote,
    adapter: Ecto.Adapters.Postgres
end
