function v = STABILITY_P_ANALYSIS()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 448);
  end
  v = vInitialized;
end
