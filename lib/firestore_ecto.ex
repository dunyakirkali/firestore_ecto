defmodule FirestoreEcto do
  def child_spec(opts) do
    DBConnection.child_spec(FirestoreEcto.Protocol, opts)
  end

  def execute(conn, query, params, opts) do
    query = %FirestoreEcto.Query{statement: query}
    DBConnection.prepare_execute(conn, query, params, opts)
  end
end
