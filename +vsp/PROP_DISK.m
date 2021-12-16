function v = PROP_DISK()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 347);
  end
  v = vInitialized;
end
