function v = SYM_PLANAR_TYPES()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 404);
  end
  v = vInitialized;
end
