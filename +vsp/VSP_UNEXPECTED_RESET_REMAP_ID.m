function v = VSP_UNEXPECTED_RESET_REMAP_ID()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 165);
  end
  v = vInitialized;
end
