function v = COLLISION_OK()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 97);
  end
  v = vInitialized;
end
