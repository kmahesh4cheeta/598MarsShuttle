function v = PRECON_MATRIX()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 443);
  end
  v = vInitialized;
end
