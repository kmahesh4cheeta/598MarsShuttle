function v = CFD_FAR_FIELD_FLAG()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 38);
  end
  v = vInitialized;
end
