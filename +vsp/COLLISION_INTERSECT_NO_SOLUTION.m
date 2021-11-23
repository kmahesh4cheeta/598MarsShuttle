function v = COLLISION_INTERSECT_NO_SOLUTION()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 98);
  end
  v = vInitialized;
end
