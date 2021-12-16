function v = DISK_SURF()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 462);
  end
  v = vInitialized;
end
