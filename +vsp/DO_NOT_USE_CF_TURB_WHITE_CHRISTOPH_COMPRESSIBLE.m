function v = DO_NOT_USE_CF_TURB_WHITE_CHRISTOPH_COMPRESSIBLE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 91);
  end
  v = vInitialized;
end
