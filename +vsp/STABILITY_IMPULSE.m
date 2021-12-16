function v = STABILITY_IMPULSE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 453);
  end
  v = vInitialized;
end
