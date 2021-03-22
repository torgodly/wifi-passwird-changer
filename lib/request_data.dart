
import 'package:wifipass/main.dart';



  
var headers = {
    'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0',
    'Accept': 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8',
    'Accept-Language': 'en-GB,en;q=0.5',
    'Content-Type': 'application/x-www-form-urlencoded',
    'Origin': 'http://192.168.1.1',
    'Connection': 'keep-alive',
    'Referer': 'http://192.168.1.1/easy_setup.htm',
    'Upgrade-Insecure-Requests': '1',
    'Accept-Encoding': 'gzip',
  };

var data = "wps_clear_configure_by_reg0=0&wps_clear_configure_by_reg1=0&Band2G5GSupport=1&dsf_enable=0&regDomain5G=0&wlBandMode=0&wlan1_phyband=&wlan2_phyband=&wlan_support_8812e=0&pptpEnableGetServIpByDomainName=1&l2tpEnableGetServIpByDomainName=1&pptpServerAddrIsDomainName=0&l2tpServerAddrIsDomainName=0&pppServiceName=&pppAcName=&wan_macAddr=000000000000&opMode=0&ntpServerId=0&lan_ip=192.168.1.1&lan_mask=255.255.255.0&ipMode=pptp&pppoeNumber=pppoeNumber&wanType=autoIp&wan_ip=0.0.0.0&wan_mask=0.0.0.0&wan_gateway=0.0.0.0&pppUserName=&pppPassword=&pppconfmPassword=&wan_pptp_use_dynamic_carrier_radio=dynamicIP&pptpServerAddr=&pptpUserName=&pptpPassword=&pptpconfmPassword=&wan_l2tp_use_dynamic_carrier_radio=dynamicIP&l2tpServerAddr=&l2tpUserName=&l2tpPassword=&l2tpconfmPassword=&USB3G_USER=&USB3G_PASS=&USB3G_PIN=&USB3G_APN=&USB3G_DIALNUM=&dnsMode=dnsAuto&dns1=&wlBandModeSel=0&band0=10&mode0=3&ssid0=GiGAWIFI&channelbound0=1&chan0=0&wlan-url=%2Fwlbasic.htm&back_url=%2Fwizard-wan.htm&next_url=%2Fwizard-wlan2.htm&basicrates0=0&operrates0=0&method0=4&length0=1&format0=2&key0=&pskFormat0=0&pskValue0="+controller.text+"&wapiAuth0=psk&wapiPskFormat0=0&wapiPskValue0=&wapiASIP0=&wapiCertSel0=0&wepEnabled0=ON&use1x0=OFF&wpaAuth0=psk&radiusPort0=1812&radiusIP0=&radiusPass0=&vlan_onoff=0&vlan_trip_tbl_str=&tag_all=1&trip_forward_iptv=1&trip_forward_internet=2&vlan_enable_1=1&vlan_iface_1=Ethernet+Port1&wanlan_1=LAN&vlan_forward_1=2&vlan_tag_1=1&vlan_id_1=1&vlan_priority_1=0&vlan_enable_2=1&vlan_iface_2=Ethernet+Port2&wanlan_2=LAN&vlan_forward_2=2&vlan_tag_2=1&vlan_id_2=1&vlan_priority_2=0&vlan_enable_3=1&vlan_iface_3=Ethernet+Port3&wanlan_3=LAN&vlan_forward_3=2&vlan_tag_3=1&vlan_id_3=1&vlan_priority_3=0&vlan_enable_4=1&vlan_iface_4=Ethernet+Port4&wanlan_4=LAN&vlan_forward_4=2&vlan_tag_4=1&vlan_id_4=1&vlan_priority_4=0&vlan_enable_5=1&vlan_iface_5=Wireless+2.4GHz+Primary+AP&wanlan_5=LAN&vlan_forward_5=2&vlan_tag_5=1&vlan_id_5=1&vlan_priority_5=0&vlan_enable_6=0&vlan_iface_6=Wireless+2.4GHz+Virtual+AP1&wanlan_6=LAN&vlan_forward_6=2&vlan_tag_6=0&vlan_priority_6=0&vlan_enable_7=0&vlan_iface_7=Wireless+2.4GHz+Virtual+AP2&wanlan_7=LAN&vlan_forward_7=2&vlan_tag_7=0&vlan_priority_7=0&vlan_enable_8=0&vlan_iface_8=Wireless+2.4GHz+Virtual+AP3&wanlan_8=LAN&vlan_forward_8=2&vlan_tag_8=0&vlan_priority_8=0&vlan_enable_9=0&vlan_iface_9=Wireless+2.4GHz+Virtual+AP4&wanlan_9=LAN&vlan_forward_9=2&vlan_tag_9=0&vlan_priority_9=0&vlan_enable_15=1&vlan_iface_15=Ethernet+Port5&wanlan_15=WAN&vlan_forward_15=2&vlan_tag_15=1&vlan_id_15=1&vlan_priority_15=0";

var url = Uri.parse("http://192.168.1.1/boafrm/formWizard");
















