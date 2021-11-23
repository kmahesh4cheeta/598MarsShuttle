function v = INTERSECT_CURV_FILE_NAME()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 285);
  end
  v = vInitialized;
end
