function v = INTERSECT_STEP_FILE_NAME()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 288);
  end
  v = vInitialized;
end
