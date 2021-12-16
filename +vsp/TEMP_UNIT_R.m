function v = TEMP_UNIT_R()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 413);
  end
  v = vInitialized;
end
