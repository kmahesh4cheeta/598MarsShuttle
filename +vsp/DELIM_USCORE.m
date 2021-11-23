function v = DELIM_USCORE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 127);
  end
  v = vInitialized;
end
