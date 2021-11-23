function v = STABILITY_HEAVE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 452);
  end
  v = vInitialized;
end
