defmodule FirestoreEcto.Proxy do
  use GenServer

  def start_link(opts) do
    GenServer.start_link(__MODULE__, opts)
  end

  def stop(pid) do
    GenServer.stop(pid, :normal)
  end

  def query(pid, statement, _params) do
    GenServer.call(pid, {:query, statement})
  end

  # Server

  @impl true
  def init(_opts) do
    Firestore.Client.connect()
  end

  @impl true
  def terminate(_, channel) do
    Firestore.Client.disconnect(channel)
  end

  @impl true
  def handle_call({:query, _statement}, _, channel) do
    {:reply, {:ok, Firestore.Client.list_documents(channel, "countries")}, channel}
  end
end