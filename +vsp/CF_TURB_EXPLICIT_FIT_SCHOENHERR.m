function v = CF_TURB_EXPLICIT_FIT_SCHOENHERR()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 78);
  end
  v = vInitialized;
end
