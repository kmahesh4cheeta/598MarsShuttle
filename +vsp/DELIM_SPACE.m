function v = DELIM_SPACE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 128);
  end
  v = vInitialized;
end
