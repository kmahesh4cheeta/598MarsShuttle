function v = XS_FOUR_SERIES()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 502);
  end
  v = vInitialized;
end
