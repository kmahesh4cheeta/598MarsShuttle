function v = CF_TURB_EXPLICIT_FIT_SPALDING()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 76);
  end
  v = vInitialized;
end
