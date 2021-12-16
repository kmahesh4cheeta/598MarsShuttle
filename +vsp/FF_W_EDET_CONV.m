function v = FF_W_EDET_CONV()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 255);
  end
  v = vInitialized;
end
