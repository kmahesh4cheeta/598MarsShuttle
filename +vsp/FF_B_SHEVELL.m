function v = FF_B_SHEVELL()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 249);
  end
  v = vInitialized;
end
