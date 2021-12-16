function v = PRECON_SSOR()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 445);
  end
  v = vInitialized;
end
