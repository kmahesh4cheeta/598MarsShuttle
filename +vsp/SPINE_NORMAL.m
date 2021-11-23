function v = SPINE_NORMAL()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 234);
  end
  v = vInitialized;
end
