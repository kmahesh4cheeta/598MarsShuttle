function v = ROT_270()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 428);
  end
  v = vInitialized;
end
