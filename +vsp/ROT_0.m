function v = ROT_0()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 425);
  end
  v = vInitialized;
end
