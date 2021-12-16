function v = FF_W_DATCOM()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 262);
  end
  v = vInitialized;
end
