function v = EXCRESCENCE_CD()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 169);
  end
  v = vInitialized;
end
