function v = YZ_ABS()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 232);
  end
  v = vInitialized;
end
