function v = XS_SIX_SERIES()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 503);
  end
  v = vInitialized;
end
