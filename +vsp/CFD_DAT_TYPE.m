function v = CFD_DAT_TYPE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 112);
  end
  v = vInitialized;
end
