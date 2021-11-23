function v = VIEW_2VER()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 423);
  end
  v = vInitialized;
end
