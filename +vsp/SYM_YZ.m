function v = SYM_YZ()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 400);
  end
  v = vInitialized;
end
