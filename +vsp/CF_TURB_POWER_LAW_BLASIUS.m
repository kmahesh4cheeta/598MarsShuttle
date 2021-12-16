function v = CF_TURB_POWER_LAW_BLASIUS()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 82);
  end
  v = vInitialized;
end
