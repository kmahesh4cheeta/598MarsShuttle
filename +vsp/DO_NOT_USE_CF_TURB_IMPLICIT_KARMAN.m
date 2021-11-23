function v = DO_NOT_USE_CF_TURB_IMPLICIT_KARMAN()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 79);
  end
  v = vInitialized;
end
