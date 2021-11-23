function v = CFD_FAR_LOC_MAN_FLAG()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 49);
  end
  v = vInitialized;
end
