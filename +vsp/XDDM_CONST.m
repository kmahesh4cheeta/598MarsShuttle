function v = XDDM_CONST()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 487);
  end
  v = vInitialized;
end
