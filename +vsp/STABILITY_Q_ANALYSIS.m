function v = STABILITY_Q_ANALYSIS()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 449);
  end
  v = vInitialized;
end
