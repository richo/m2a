module M2A
end

%w[cli].each do |filename|
  require "m2a/#{filename}"
end
