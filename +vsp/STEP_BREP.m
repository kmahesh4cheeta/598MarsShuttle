function v = STEP_BREP()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 383);
  end
  v = vInitialized;
end
