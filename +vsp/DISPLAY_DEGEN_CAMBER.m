function v = DISPLAY_DEGEN_CAMBER()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 139);
  end
  v = vInitialized;
end
