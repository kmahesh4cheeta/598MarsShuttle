function v = LEN_IN()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 293);
  end
  v = vInitialized;
end
