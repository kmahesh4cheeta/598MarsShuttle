function v = EXPORT_BEM()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 188);
  end
  v = vInitialized;
end
