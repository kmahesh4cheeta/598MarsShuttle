function v = INT_DATA()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 362);
  end
  v = vInitialized;
end
