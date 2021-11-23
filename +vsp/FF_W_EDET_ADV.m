function v = FF_W_EDET_ADV()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 256);
  end
  v = vInitialized;
end
