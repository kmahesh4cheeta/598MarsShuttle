function v = ROT_90()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 426);
  end
  v = vInitialized;
end
