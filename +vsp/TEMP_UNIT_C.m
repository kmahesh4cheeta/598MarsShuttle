function v = TEMP_UNIT_C()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 411);
  end
  v = vInitialized;
end
