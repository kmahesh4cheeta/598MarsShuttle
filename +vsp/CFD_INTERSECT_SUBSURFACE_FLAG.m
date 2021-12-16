function v = CFD_INTERSECT_SUBSURFACE_FLAG()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 36);
  end
  v = vInitialized;
end
