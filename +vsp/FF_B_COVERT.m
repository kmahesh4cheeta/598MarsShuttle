function v = FF_B_COVERT()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 250);
  end
  v = vInitialized;
end
