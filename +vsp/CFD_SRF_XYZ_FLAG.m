function v = CFD_SRF_XYZ_FLAG()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 53);
  end
  v = vInitialized;
end
