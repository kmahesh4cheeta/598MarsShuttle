function v = TEMP_UNIT_F()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 412);
  end
  v = vInitialized;
end
