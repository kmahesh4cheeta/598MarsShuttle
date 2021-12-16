function v = COMP_GEOM_TXT_TYPE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 101);
  end
  v = vInitialized;
end
