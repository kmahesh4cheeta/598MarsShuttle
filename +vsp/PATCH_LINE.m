function v = PATCH_LINE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 312);
  end
  v = vInitialized;
end
