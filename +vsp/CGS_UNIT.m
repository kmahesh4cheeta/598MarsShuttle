function v = CGS_UNIT()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 236);
  end
  v = vInitialized;
end
