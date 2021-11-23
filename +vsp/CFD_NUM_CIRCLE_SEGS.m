function v = CFD_NUM_CIRCLE_SEGS()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 33);
  end
  v = vInitialized;
end
