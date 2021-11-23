function v = CF_TURB_IMPLICIT_KARMAN_SCHOENHERR()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 81);
  end
  v = vInitialized;
end
