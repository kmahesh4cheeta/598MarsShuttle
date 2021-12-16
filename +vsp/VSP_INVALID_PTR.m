function v = VSP_INVALID_PTR()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 146);
  end
  v = vInitialized;
end
