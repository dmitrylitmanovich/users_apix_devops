defmodule UsersApix.Repo.Migrations.CreatePersons do
  use Ecto.Migration

  def change do
    create table(:persons) do
      add :full_name, :string
      add :email, :string

      timestamps()
    end
  end
end
