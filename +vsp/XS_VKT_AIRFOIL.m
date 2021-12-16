function v = XS_VKT_AIRFOIL()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 509);
  end
  v = vInitialized;
end
