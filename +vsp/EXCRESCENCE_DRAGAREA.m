function v = EXCRESCENCE_DRAGAREA()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 172);
  end
  v = vInitialized;
end
