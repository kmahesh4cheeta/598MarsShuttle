function v = XZ_ABS()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 233);
  end
  v = vInitialized;
end
