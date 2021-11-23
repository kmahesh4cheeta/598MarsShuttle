function v = STABILITY_UNSTEADY()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 451);
  end
  v = vInitialized;
end
