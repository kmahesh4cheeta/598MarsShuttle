function v = CF_TURB_SCHULTZ_GRUNOW_SCHOENHERR()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 90);
  end
  v = vInitialized;
end
