function v = TEMP_UNIT_K()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 410);
  end
  v = vInitialized;
end
