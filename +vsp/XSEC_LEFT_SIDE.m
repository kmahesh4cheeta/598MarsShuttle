function v = XSEC_LEFT_SIDE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 516);
  end
  v = vInitialized;
end
