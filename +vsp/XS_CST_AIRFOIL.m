function v = XS_CST_AIRFOIL()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 508);
  end
  v = vInitialized;
end
