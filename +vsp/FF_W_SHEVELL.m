function v = FF_W_SHEVELL()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 259);
  end
  v = vInitialized;
end
