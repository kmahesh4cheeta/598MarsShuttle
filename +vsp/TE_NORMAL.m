function v = TE_NORMAL()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 242);
  end
  v = vInitialized;
end
