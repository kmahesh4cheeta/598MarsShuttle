function v = STABILITY_OFF()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 446);
  end
  v = vInitialized;
end
