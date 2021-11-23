function v = LEN_FT()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 294);
  end
  v = vInitialized;
end
