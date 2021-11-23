function v = LEN_MM()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 290);
  end
  v = vInitialized;
end
