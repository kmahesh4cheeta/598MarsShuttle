function v = CF_TURB_IMPLICIT_SCHOENHERR()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 80);
  end
  v = vInitialized;
end
