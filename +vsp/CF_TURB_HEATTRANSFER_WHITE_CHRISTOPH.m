function v = CF_TURB_HEATTRANSFER_WHITE_CHRISTOPH()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 96);
  end
  v = vInitialized;
end
