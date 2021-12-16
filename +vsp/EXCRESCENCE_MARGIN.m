function v = EXCRESCENCE_MARGIN()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 171);
  end
  v = vInitialized;
end
