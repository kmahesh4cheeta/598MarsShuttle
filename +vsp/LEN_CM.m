function v = LEN_CM()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 291);
  end
  v = vInitialized;
end
