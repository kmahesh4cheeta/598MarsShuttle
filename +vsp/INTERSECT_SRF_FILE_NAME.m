function v = INTERSECT_SRF_FILE_NAME()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 284);
  end
  v = vInitialized;
end
