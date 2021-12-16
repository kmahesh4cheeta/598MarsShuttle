function v = VEC_PROJ()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 340);
  end
  v = vInitialized;
end
