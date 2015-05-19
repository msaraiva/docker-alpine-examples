defmodule HelloNif.Math do
  @on_load { :init, 0 }

  def init do
    :ok  = :erlang.load_nif("./priv/math", 1)
  end

  def dot_product(_list1, _list2) do
    exit(:nif_library_not_loaded)
  end
  
end
