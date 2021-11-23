function v = STABILITY_DEFAULT()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 447);
  end
  v = vInitialized;
end
