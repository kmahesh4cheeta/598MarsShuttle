function v = DELIM_COMMA()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 126);
  end
  v = vInitialized;
end
