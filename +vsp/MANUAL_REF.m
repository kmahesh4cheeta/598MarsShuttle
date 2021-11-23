function v = MANUAL_REF()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 358);
  end
  v = vInitialized;
end
