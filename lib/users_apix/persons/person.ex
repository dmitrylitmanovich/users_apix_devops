defmodule UsersApix.Persons.Person do
  use Ecto.Schema
  import Ecto.Changeset

  schema "persons" do
    field :email, :string
    field :full_name, :string

    timestamps()
  end

  @doc false
  def changeset(person, attrs) do
    person
    |> cast(attrs, [:full_name, :email])
    |> validate_required([:full_name, :email])
  end
end
