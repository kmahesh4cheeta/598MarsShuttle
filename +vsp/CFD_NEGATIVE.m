function v = CFD_NEGATIVE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 455);
  end
  v = vInitialized;
end
