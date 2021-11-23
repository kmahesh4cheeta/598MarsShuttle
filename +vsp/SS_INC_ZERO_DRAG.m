function v = SS_INC_ZERO_DRAG()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 386);
  end
  v = vInitialized;
end
