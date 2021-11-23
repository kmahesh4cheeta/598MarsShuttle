function v = VSP_INVALID_TYPE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 147);
  end
  v = vInitialized;
end
