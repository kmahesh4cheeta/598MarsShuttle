function v = XDDM_VAR()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 486);
  end
  v = vInitialized;
end
