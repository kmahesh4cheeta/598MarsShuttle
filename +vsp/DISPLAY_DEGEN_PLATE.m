function v = DISPLAY_DEGEN_PLATE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 138);
  end
  v = vInitialized;
end
