function v = CFD_OBJ_TYPE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 111);
  end
  v = vInitialized;
end
