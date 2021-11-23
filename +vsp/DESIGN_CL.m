function v = DESIGN_CL()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 23);
  end
  v = vInitialized;
end
