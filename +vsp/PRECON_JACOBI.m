function v = PRECON_JACOBI()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 444);
  end
  v = vInitialized;
end
