function v = SS_ELLIPSE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 394);
  end
  v = vInitialized;
end
