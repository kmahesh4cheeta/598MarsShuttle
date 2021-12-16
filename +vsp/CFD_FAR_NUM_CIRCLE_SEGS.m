function v = CFD_FAR_NUM_CIRCLE_SEGS()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 41);
  end
  v = vInitialized;
end
