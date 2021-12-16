function v = XS_ONE_SIX_SERIES()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 513);
  end
  v = vInitialized;
end
