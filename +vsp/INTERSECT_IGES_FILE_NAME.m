function v = INTERSECT_IGES_FILE_NAME()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 287);
  end
  v = vInitialized;
end
