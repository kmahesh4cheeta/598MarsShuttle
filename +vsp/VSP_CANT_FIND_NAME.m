function v = VSP_CANT_FIND_NAME()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 150);
  end
  v = vInitialized;
end
