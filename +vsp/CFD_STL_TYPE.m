function v = CFD_STL_TYPE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 108);
  end
  v = vInitialized;
end
