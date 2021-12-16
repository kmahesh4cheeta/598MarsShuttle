function v = LEN_YD()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 295);
  end
  v = vInitialized;
end
