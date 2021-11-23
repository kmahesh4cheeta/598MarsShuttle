function v = CF_TURB_EXPLICIT_FIT_SPALDING_CHI()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 77);
  end
  v = vInitialized;
end
