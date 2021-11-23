function v = CF_TURB_POWER_LAW_PRANDTL_HIGH_RE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 85);
  end
  v = vInitialized;
end
