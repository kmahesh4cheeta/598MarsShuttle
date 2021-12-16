function v = CF_TURB_POWER_LAW_PRANDTL_MEDIUM_RE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 84);
  end
  v = vInitialized;
end
