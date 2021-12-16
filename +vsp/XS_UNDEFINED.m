function v = XS_UNDEFINED()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 494);
  end
  v = vInitialized;
end
