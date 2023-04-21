defmodule UsersApixWeb.Api.PersonJSON do
  alias UsersApix.Persons.Person

  @doc """
  Renders a list of persons.
  """
  def index(%{persons: persons}) do
    %{data: for(person <- persons, do: data(person))}
  end

  @doc """
  Renders a single person.
  """
  def show(%{person: person}) do
    %{data: data(person)}
  end

  defp data(%Person{} = person) do
    %{
      id: person.id,
      email: person.email
    }
  end
end
