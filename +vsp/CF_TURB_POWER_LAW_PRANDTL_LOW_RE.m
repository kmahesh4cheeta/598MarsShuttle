function v = CF_TURB_POWER_LAW_PRANDTL_LOW_RE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 83);
  end
  v = vInitialized;
end
