defmodule FirestoreEcto.EctoAdapter do
  @behaviour Ecto.Adapter
  @behaviour Ecto.Adapter.Queryable

    ## Adapter

  @doc false
  defmacro __before_compile__(_env) do
  end

  def init(opts) do
    {:ok, FirestoreEcto.child_spec(opts), nil}
  end

  def checkout(_adapter_meta, _config, _function) do
    raise "Not implemented"
  end
  def dumpers(_base, type), do: [type]
  def ensure_all_started(_repo, _type) do
  end
  def loaders(_base, type), do: [type]

  def execute(adapter_meta, query_meta, query_cache, params, options) do
    raise "not implemented"
  end

  def prepare(atom, query) do
    raise "not implemented"
  end

  def stream(adapter_meta, query_meta, query_cache, params, options) do
    raise "not implemented"
  end
end