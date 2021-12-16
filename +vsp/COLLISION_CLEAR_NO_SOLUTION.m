function v = COLLISION_CLEAR_NO_SOLUTION()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 99);
  end
  v = vInitialized;
end
