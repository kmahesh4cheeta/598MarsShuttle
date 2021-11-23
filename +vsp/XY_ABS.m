function v = XY_ABS()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 231);
  end
  v = vInitialized;
end
