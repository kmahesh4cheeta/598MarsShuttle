function v = SET_2D()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 132);
  end
  v = vInitialized;
end
