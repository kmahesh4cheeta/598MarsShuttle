function v = EXPORT_BEZIER_AIRFOIL()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 195);
  end
  v = vInitialized;
end
