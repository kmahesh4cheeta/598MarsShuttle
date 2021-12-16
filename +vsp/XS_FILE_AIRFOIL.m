function v = XS_FILE_AIRFOIL()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 507);
  end
  v = vInitialized;
end
