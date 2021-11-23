function v = ROT_180()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 427);
  end
  v = vInitialized;
end
