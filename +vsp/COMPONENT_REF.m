function v = COMPONENT_REF()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 359);
  end
  v = vInitialized;
end
