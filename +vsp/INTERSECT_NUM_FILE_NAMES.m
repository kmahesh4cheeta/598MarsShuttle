function v = INTERSECT_NUM_FILE_NAMES()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 289);
  end
  v = vInitialized;
end
