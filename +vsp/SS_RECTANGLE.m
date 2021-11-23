function v = SS_RECTANGLE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 393);
  end
  v = vInitialized;
end
