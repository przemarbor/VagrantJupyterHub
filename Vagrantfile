Vagrant.configure("2") do |config|
  config.vm.box = "bento/ubuntu-20.04"
  config.vm.synced_folder ".", "/home/vagrant/shared"
  config.vm.network "private_network", ip: "55.55.55.5"
  # config.vm.network "private_network", type: "dhcp"
  # config.vm.network "forwarded_port", guest: 2368, host: 8080
  
  
  # https://stackoverflow.com/questions/33129651/access-web-server-on-virtualbox-vagrant-machine-from-host-browser
  # https://developer.hashicorp.com/vagrant/docs/networking/private_network
  # config.vm.network "private_network", typesuh: "dhcp"
  
  config.vm.provider "virtualbox" do |vb|
 
    vb.name = "TestUbu" # nazwa maszyny wirtualnej
    vb.cpus = 2                   # przyznana liczba rdzeni procesora
    vb.memory = 2048              # przyznana liczba MB pamięci
    vb.customize ["modifyvm", :id, "--vram", "128"] # przyznana liczba megabajtów pamięci RAM dla karty graficznej,
    vb.customize ["modifyvm", :id, "--clipboard", "bidirectional"] # dwukierunkowy schowek, pozwalający kopiować wykorzystując skróty klawiszowe Ctrl+C, Ctrl+V,     
    vb.gui = true                # true/false - czy virtualbox ma uruchamiac maszyne w trybie graficznym
 
  end
end