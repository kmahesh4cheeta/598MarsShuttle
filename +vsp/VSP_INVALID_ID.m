function v = VSP_INVALID_ID()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 159);
  end
  v = vInitialized;
end
