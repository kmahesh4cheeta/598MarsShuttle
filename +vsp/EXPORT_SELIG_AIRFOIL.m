function v = EXPORT_SELIG_AIRFOIL()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 194);
  end
  v = vInitialized;
end
