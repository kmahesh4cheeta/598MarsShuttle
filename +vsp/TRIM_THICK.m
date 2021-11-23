function v = TRIM_THICK()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 520);
  end
  v = vInitialized;
end
