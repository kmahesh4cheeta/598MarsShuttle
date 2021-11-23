function v = STABILITY_R_ANALYSIS()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 450);
  end
  v = vInitialized;
end
