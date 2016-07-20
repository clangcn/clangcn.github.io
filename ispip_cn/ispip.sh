#!/bin/bash
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH
# this scrip write by Clang at 2014-08-12.
# discriminate per isp from apnic.

# define save ip result directory.
save_dir="$HOME/ispip"

# download ip info from apnic website.
apnic_ip_info="$save_dir/apnic_ip_info"

# get all ip list values from apnic.
apnic_all_ip="$save_dir/apnic_all_ip"


if [ ! -d "$save_dir" ]; then
mkdir "$save_dir"
fi

Local_Dir="/home/ispip.clang.cn"


Old_unicom_cnc=$(date -d -30day +"%Y%m%d")_unicom_cnc.html
Old_chinatelecom=$(date -d -30day +"%Y%m%d")_chinatelecom.html
Old_cernet=$(date -d -30day +"%Y%m%d")_cernet.html
Old_crtc=$(date -d -30day +"%Y%m%d")_crtc.html
Old_cmcc=$(date -d -30day +"%Y%m%d")_cmcc.html
Old_othernet=$(date -d -30day +"%Y%m%d")_othernet.html

re_unicom_cnc=$(date -d -1day +"%Y%m%d")_unicom_cnc.html
re_chinatelecom=$(date -d -1day +"%Y%m%d")_chinatelecom.html
re_cernet=$(date -d -1day +"%Y%m%d")_cernet.html
re_crtc=$(date -d -1day +"%Y%m%d")_crtc.html
re_cmcc=$(date -d -1day +"%Y%m%d")_cmcc.html
re_othernet=$(date -d -1day +"%Y%m%d")_othernet.html

# delete old exist file.
if [ -e "$apnic_ip_info" ];then
rm -f $apnic_ip_info
fi

if [ -e "$apnic_all_ip" ];then
rm -f $apnic_all_ip
fi

if [ -e $save_dir/unicom_cnc.html ];then
rm -f $save_dir/unicom_cnc.html
fi

if [ -e $save_dir/chinatelecom.html ];then
rm -f $save_dir/chinatelecom.html
fi

if [ -e $save_dir/cernet.html ];then
rm -f $save_dir/cernet.html
fi

if [ -e $save_dir/crtc.html ];then
rm -f $save_dir/crtc.html
fi

if [ -e $save_dir/cmcc.html ];then
rm -f $save_dir/cmcc.html
fi

if [ -e $save_dir/othernet.html ];then
rm -f $save_dir/othernet.html
fi

echo '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">' >${save_dir}/chinatelecom.html
echo '<html xmlns="http://www.w3.org/1999/xhtml">' >>${save_dir}/chinatelecom.html
echo '<head profile="http://gmpg.org/xfn/11">' >>${save_dir}/chinatelecom.html
echo '     <link rel="icon" href="favicon.ico" type="image/x-icon" />' >>${save_dir}/chinatelecom.html
echo '     <link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />' >>${save_dir}/chinatelecom.html
echo '     <meta http-equiv="Content-Type" content="text/html; charset=GBk" />' >>${save_dir}/chinatelecom.html
echo '     <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />' >>${save_dir}/chinatelecom.html
echo '     <meta name="robots" content="all" />' >>${save_dir}/chinatelecom.html
echo '     <meta name="author" content="admin@clang.cn,Clang" />' >>${save_dir}/chinatelecom.html
echo '     <meta name="Copyright" content="╃苍狼山庄╃" />' >>${save_dir}/chinatelecom.html
echo '     <title>每日更新的电信IP段，联通IP段，铁通IP段和移动IP段 - ╃苍狼山庄╃</title>' >>${save_dir}/chinatelecom.html
echo '     <meta name="description" content="根据APNIC的最新IP地址列表及whois信息，每日0点（北京时间）生成的各主要运营商IP地址段，脚本自动生成，难免有错漏，有问题可以联系我。" />' >>${save_dir}/chinatelecom.html
echo '     <meta name="keywords" content="APNIC,ChinaTelcom,CMCC,CTT,IP,UNICOM_CNC,教育网IP,电信IP,移动IP,联通IP,铁通IP,clang,苍狼,苍狼山庄,╃苍狼山庄╃,winpe,usb,usb-zip,usb-hdd,hdd,usb-zip+,usb-hdd+,u+,电脑,网络,智能手机,windows mobile,smartphone,ppc,cisco,服务器,isa,工作组,阵列,wordpress,WordPress,Blog,ASP,designing,with,web,standards,xhtml,css,graphic,design,layout,usability,accessibility,w3c,w3,w3cn" />' >>${save_dir}/chinatelecom.html
echo '     <STYLE>body {font-family:Verdana,Tahoma,"BitStream vera Sans",Arial,Helvetica,sans-serif;font-size:12px;}</STYLE>' >>${save_dir}/chinatelecom.html
echo '</head>' >>${save_dir}/chinatelecom.html
echo '<body>' >>${save_dir}/chinatelecom.html
echo "#########################################<br>" >>${save_dir}/chinatelecom.html
echo "# ISP 中国电信 所有IP地址段表<br>" >>${save_dir}/chinatelecom.html
echo "# 数据来自于: http://ispip.clang.cn/<br>" >>${save_dir}/chinatelecom.html
echo "# 数据生成时间:strTime<br>" >>${save_dir}/chinatelecom.html
echo "# 脚本自动生成,如有错漏或任何建议,请联系admin[at]clangcn.com<br>" >>${save_dir}/chinatelecom.html
echo "#########################################<br>" >>${save_dir}/chinatelecom.html

echo '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">' >${save_dir}/unicom_cnc.html
echo '<html xmlns="http://www.w3.org/1999/xhtml">' >>${save_dir}/unicom_cnc.html
echo '<head profile="http://gmpg.org/xfn/11">' >>${save_dir}/unicom_cnc.html
echo '     <link rel="icon" href="favicon.ico" type="image/x-icon" />' >>${save_dir}/unicom_cnc.html
echo '     <link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />' >>${save_dir}/unicom_cnc.html
echo '     <meta http-equiv="Content-Type" content="text/html; charset=GBk" />' >>${save_dir}/unicom_cnc.html
echo '     <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />' >>${save_dir}/unicom_cnc.html
echo '     <meta name="robots" content="all" />' >>${save_dir}/unicom_cnc.html
echo '     <meta name="author" content="admin@clang.cn,Clang" />' >>${save_dir}/unicom_cnc.html
echo '     <meta name="Copyright" content="╃苍狼山庄╃" />' >>${save_dir}/unicom_cnc.html
echo '     <title>每日更新的电信IP段，联通IP段，铁通IP段和移动IP段 - ╃苍狼山庄╃</title>' >>${save_dir}/unicom_cnc.html
echo '     <meta name="description" content="根据APNIC的最新IP地址列表及whois信息，每日0点（北京时间）生成的各主要运营商IP地址段，脚本自动生成，难免有错漏，有问题可以联系我。" />' >>${save_dir}/unicom_cnc.html
echo '     <meta name="keywords" content="APNIC,ChinaTelcom,CMCC,CTT,IP,UNICOM_CNC,教育网IP,电信IP,移动IP,联通IP,铁通IP,clang,苍狼,苍狼山庄,╃苍狼山庄╃,winpe,usb,usb-zip,usb-hdd,hdd,usb-zip+,usb-hdd+,u+,电脑,网络,智能手机,windows mobile,smartphone,ppc,cisco,服务器,isa,工作组,阵列,wordpress,WordPress,Blog,ASP,designing,with,web,standards,xhtml,css,graphic,design,layout,usability,accessibility,w3c,w3,w3cn" />' >>${save_dir}/unicom_cnc.html
echo '     <STYLE>body {font-family:Verdana,Tahoma,"BitStream vera Sans",Arial,Helvetica,sans-serif;font-size:12px;}</STYLE>' >>${save_dir}/unicom_cnc.html
echo '</head>' >>${save_dir}/unicom_cnc.html
echo '<body>' >>${save_dir}/unicom_cnc.html
echo "#########################################<br>" >>${save_dir}/unicom_cnc.html
echo "# ISP 中国联通(网通) 所有IP地址段表<br>" >>${save_dir}/unicom_cnc.html
echo "# 数据来自于: http://ispip.clang.cn/<br>" >>${save_dir}/unicom_cnc.html
echo "# 数据生成时间:strTime<br>" >>${save_dir}/unicom_cnc.html
echo "# 脚本自动生成,如有错漏或任何建议,请联系admin[at]clangcn.com<br>" >>${save_dir}/unicom_cnc.html
echo "#########################################<br>" >>${save_dir}/unicom_cnc.html

echo '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">' >${save_dir}/cmcc.html
echo '<html xmlns="http://www.w3.org/1999/xhtml">' >>${save_dir}/cmcc.html
echo '<head profile="http://gmpg.org/xfn/11">' >>${save_dir}/cmcc.html
echo '     <link rel="icon" href="favicon.ico" type="image/x-icon" />' >>${save_dir}/cmcc.html
echo '     <link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />' >>${save_dir}/cmcc.html
echo '     <meta http-equiv="Content-Type" content="text/html; charset=GBk" />' >>${save_dir}/cmcc.html
echo '     <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />' >>${save_dir}/cmcc.html
echo '     <meta name="robots" content="all" />' >>${save_dir}/cmcc.html
echo '     <meta name="author" content="admin@clang.cn,Clang" />' >>${save_dir}/cmcc.html
echo '     <meta name="Copyright" content="╃苍狼山庄╃" />' >>${save_dir}/cmcc.html
echo '     <title>每日更新的电信IP段，联通IP段，铁通IP段和移动IP段 - ╃苍狼山庄╃</title>' >>${save_dir}/cmcc.html
echo '     <meta name="description" content="根据APNIC的最新IP地址列表及whois信息，每日0点（北京时间）生成的各主要运营商IP地址段，脚本自动生成，难免有错漏，有问题可以联系我。" />' >>${save_dir}/cmcc.html
echo '     <meta name="keywords" content="APNIC,ChinaTelcom,CMCC,CTT,IP,UNICOM_CNC,教育网IP,电信IP,移动IP,联通IP,铁通IP,clang,苍狼,苍狼山庄,╃苍狼山庄╃,winpe,usb,usb-zip,usb-hdd,hdd,usb-zip+,usb-hdd+,u+,电脑,网络,智能手机,windows mobile,smartphone,ppc,cisco,服务器,isa,工作组,阵列,wordpress,WordPress,Blog,ASP,designing,with,web,standards,xhtml,css,graphic,design,layout,usability,accessibility,w3c,w3,w3cn" />' >>${save_dir}/cmcc.html
echo '     <STYLE>body {font-family:Verdana,Tahoma,"BitStream vera Sans",Arial,Helvetica,sans-serif;font-size:12px;}</STYLE>' >>${save_dir}/cmcc.html
echo '</head>' >>${save_dir}/cmcc.html
echo '<body>' >>${save_dir}/cmcc.html
echo "#########################################<br>" >>${save_dir}/cmcc.html
echo "# ISP 中国移动 所有IP地址段表<br>" >>${save_dir}/cmcc.html
echo "# 数据来自于: http://ispip.clang.cn/<br>" >>${save_dir}/cmcc.html
echo "# 数据生成时间:strTime<br>" >>${save_dir}/cmcc.html
echo "# 脚本自动生成,如有错漏或任何建议,请联系admin[at]clangcn.com<br>" >>${save_dir}/cmcc.html
echo "#########################################<br>" >>${save_dir}/cmcc.html

echo '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">' >${save_dir}/crtc.html
echo '<html xmlns="http://www.w3.org/1999/xhtml">' >>${save_dir}/crtc.html
echo '<head profile="http://gmpg.org/xfn/11">' >>${save_dir}/crtc.html
echo '     <link rel="icon" href="favicon.ico" type="image/x-icon" />' >>${save_dir}/crtc.html
echo '     <link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />' >>${save_dir}/crtc.html
echo '     <meta http-equiv="Content-Type" content="text/html; charset=GBk" />' >>${save_dir}/crtc.html
echo '     <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />' >>${save_dir}/crtc.html
echo '     <meta name="robots" content="all" />' >>${save_dir}/crtc.html
echo '     <meta name="author" content="admin@clang.cn,Clang" />' >>${save_dir}/crtc.html
echo '     <meta name="Copyright" content="╃苍狼山庄╃" />' >>${save_dir}/crtc.html
echo '     <title>每日更新的电信IP段，联通IP段，铁通IP段和移动IP段 - ╃苍狼山庄╃</title>' >>${save_dir}/crtc.html
echo '     <meta name="description" content="根据APNIC的最新IP地址列表及whois信息，每日0点（北京时间）生成的各主要运营商IP地址段，脚本自动生成，难免有错漏，有问题可以联系我。" />' >>${save_dir}/crtc.html
echo '     <meta name="keywords" content="APNIC,ChinaTelcom,CMCC,CTT,IP,UNICOM_CNC,教育网IP,电信IP,移动IP,联通IP,铁通IP,clang,苍狼,苍狼山庄,╃苍狼山庄╃,winpe,usb,usb-zip,usb-hdd,hdd,usb-zip+,usb-hdd+,u+,电脑,网络,智能手机,windows mobile,smartphone,ppc,cisco,服务器,isa,工作组,阵列,wordpress,WordPress,Blog,ASP,designing,with,web,standards,xhtml,css,graphic,design,layout,usability,accessibility,w3c,w3,w3cn" />' >>${save_dir}/crtc.html
echo '     <STYLE>body {font-family:Verdana,Tahoma,"BitStream vera Sans",Arial,Helvetica,sans-serif;font-size:12px;}</STYLE>' >>${save_dir}/crtc.html
echo '</head>' >>${save_dir}/crtc.html
echo '<body>' >>${save_dir}/crtc.html
echo "#########################################<br>" >>${save_dir}/crtc.html
echo "# ISP 中国铁通 所有IP地址段表<br>" >>${save_dir}/crtc.html
echo "# 数据来自于: http://ispip.clang.cn/<br>" >>${save_dir}/crtc.html
echo "# 数据生成时间:strTime<br>" >>${save_dir}/crtc.html
echo "# 脚本自动生成,如有错漏或任何建议,请联系admin[at]clangcn.com<br>" >>${save_dir}/crtc.html
echo "#########################################<br>" >>${save_dir}/crtc.html

echo '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">' >${save_dir}/cernet.html
echo '<html xmlns="http://www.w3.org/1999/xhtml">' >>${save_dir}/cernet.html
echo '<head profile="http://gmpg.org/xfn/11">' >>${save_dir}/cernet.html
echo '     <link rel="icon" href="favicon.ico" type="image/x-icon" />' >>${save_dir}/cernet.html
echo '     <link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />' >>${save_dir}/cernet.html
echo '     <meta http-equiv="Content-Type" content="text/html; charset=GBk" />' >>${save_dir}/cernet.html
echo '     <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />' >>${save_dir}/cernet.html
echo '     <meta name="robots" content="all" />' >>${save_dir}/cernet.html
echo '     <meta name="author" content="admin@clang.cn,Clang" />' >>${save_dir}/cernet.html
echo '     <meta name="Copyright" content="╃苍狼山庄╃" />' >>${save_dir}/cernet.html
echo '     <title>每日更新的电信IP段，联通IP段，铁通IP段和移动IP段 - ╃苍狼山庄╃</title>' >>${save_dir}/cernet.html
echo '     <meta name="description" content="根据APNIC的最新IP地址列表及whois信息，每日0点（北京时间）生成的各主要运营商IP地址段，脚本自动生成，难免有错漏，有问题可以联系我。" />' >>${save_dir}/cernet.html
echo '     <meta name="keywords" content="APNIC,ChinaTelcom,CMCC,CTT,IP,UNICOM_CNC,教育网IP,电信IP,移动IP,联通IP,铁通IP,clang,苍狼,苍狼山庄,╃苍狼山庄╃,winpe,usb,usb-zip,usb-hdd,hdd,usb-zip+,usb-hdd+,u+,电脑,网络,智能手机,windows mobile,smartphone,ppc,cisco,服务器,isa,工作组,阵列,wordpress,WordPress,Blog,ASP,designing,with,web,standards,xhtml,css,graphic,design,layout,usability,accessibility,w3c,w3,w3cn" />' >>${save_dir}/cernet.html
echo '     <STYLE>body {font-family:Verdana,Tahoma,"BitStream vera Sans",Arial,Helvetica,sans-serif;font-size:12px;}</STYLE>' >>${save_dir}/cernet.html
echo '</head>' >>${save_dir}/cernet.html
echo '<body>' >>${save_dir}/cernet.html
echo "#########################################<br>" >>${save_dir}/cernet.html
echo "# ISP 中国教育网 所有IP地址段表<br>" >>${save_dir}/cernet.html
echo "# 数据来自于: http://ispip.clang.cn/<br>" >>${save_dir}/cernet.html
echo "# 数据生成时间:strTime<br>" >>${save_dir}/cernet.html
echo "# 脚本自动生成,如有错漏或任何建议,请联系admin[at]clangcn.com<br>" >>${save_dir}/cernet.html
echo "#########################################<br>" >>${save_dir}/cernet.html

echo '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">' >${save_dir}/othernet.html
echo '<html xmlns="http://www.w3.org/1999/xhtml">' >>${save_dir}/othernet.html
echo '<head profile="http://gmpg.org/xfn/11">' >>${save_dir}/othernet.html
echo '     <link rel="icon" href="favicon.ico" type="image/x-icon" />' >>${save_dir}/othernet.html
echo '     <link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />' >>${save_dir}/othernet.html
echo '     <meta http-equiv="Content-Type" content="text/html; charset=GBk" />' >>${save_dir}/othernet.html
echo '     <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />' >>${save_dir}/othernet.html
echo '     <meta name="robots" content="all" />' >>${save_dir}/othernet.html
echo '     <meta name="author" content="admin@clang.cn,Clang" />' >>${save_dir}/othernet.html
echo '     <meta name="Copyright" content="╃苍狼山庄╃" />' >>${save_dir}/othernet.html
echo '     <title>每日更新的电信IP段，联通IP段，铁通IP段和移动IP段 - ╃苍狼山庄╃</title>' >>${save_dir}/othernet.html
echo '     <meta name="description" content="根据APNIC的最新IP地址列表及whois信息，每日0点（北京时间）生成的各主要运营商IP地址段，脚本自动生成，难免有错漏，有问题可以联系我。" />' >>${save_dir}/othernet.html
echo '     <meta name="keywords" content="APNIC,ChinaTelcom,CMCC,CTT,IP,UNICOM_CNC,教育网IP,电信IP,移动IP,联通IP,铁通IP,clang,苍狼,苍狼山庄,╃苍狼山庄╃,winpe,usb,usb-zip,usb-hdd,hdd,usb-zip+,usb-hdd+,u+,电脑,网络,智能手机,windows mobile,smartphone,ppc,cisco,服务器,isa,工作组,阵列,wordpress,WordPress,Blog,ASP,designing,with,web,standards,xhtml,css,graphic,design,layout,usability,accessibility,w3c,w3,w3cn" />' >>${save_dir}/othernet.html
echo '     <STYLE>body {font-family:Verdana,Tahoma,"BitStream vera Sans",Arial,Helvetica,sans-serif;font-size:12px;}</STYLE>' >>${save_dir}/othernet.html
echo '</head>' >>${save_dir}/othernet.html
echo '<body>' >>${save_dir}/othernet.html
echo "#########################################<br>" >>${save_dir}/othernet.html
echo "# ISP 中国其他ISP 所有IP地址段表<br>" >>${save_dir}/othernet.html
echo "# 数据来自于: http://ispip.clang.cn/<br>" >>${save_dir}/othernet.html
echo "# 数据生成时间:strTime<br>" >>${save_dir}/othernet.html
echo "# 脚本自动生成,如有错漏或任何建议,请联系admin[at]clangcn.com<br>" >>${save_dir}/othernet.html
echo "#########################################<br>" >>${save_dir}/othernet.html

wget -q http://ftp.apnic.net/apnic/stats/apnic/delegated-apnic-latest -O $apnic_ip_info

grep "apnic|CN|ipv4|" "$apnic_ip_info" | awk -F'|' '{print $4"/"$5}' > "$apnic_all_ip"
sed -i 's:/1$:/255.255.255.255:g' "$apnic_all_ip"
sed -i 's:/2$:/255.255.255.254:g' "$apnic_all_ip"
sed -i 's:/4$:/255.255.255.252:g' "$apnic_all_ip"
sed -i 's:/8$:/255.255.255.248:g' "$apnic_all_ip"
sed -i 's:/16$:/255.255.255.240:g' "$apnic_all_ip"
sed -i 's:/32$:/255.255.255.224:g' "$apnic_all_ip"
sed -i 's:/64$:/255.255.255.192:g' "$apnic_all_ip"
sed -i 's:/128$:/255.255.255.128:g' "$apnic_all_ip"
sed -i 's:/256$:/255.255.255.0:g' "$apnic_all_ip"
sed -i 's:/512$:/255.255.254.0:g' "$apnic_all_ip"
sed -i 's:/1024$:/255.255.252.0:g' "$apnic_all_ip"
sed -i 's:/2048$:/255.255.248.0:g' "$apnic_all_ip"
sed -i 's:/4096$:/255.255.240.0:g' "$apnic_all_ip"
sed -i 's:/8192$:/255.255.224.0:g' "$apnic_all_ip"
sed -i 's:/16384$:/255.255.192.0:g' "$apnic_all_ip"
sed -i 's:/32768$:/255.255.128.0:g' "$apnic_all_ip"
sed -i 's:/65536$:/255.255.0.0:g' "$apnic_all_ip"
sed -i 's:/131072$:/255.254.0.0:g' "$apnic_all_ip"
sed -i 's:/262144$:/255.252.0.0:g' "$apnic_all_ip"
sed -i 's:/524288$:/255.248.0.0:g' "$apnic_all_ip"
sed -i 's:/1048576$:/255.240.0.0:g' "$apnic_all_ip"
sed -i 's:/2097152$:/255.224.0.0:g' "$apnic_all_ip"
sed -i 's:/4194304$:/255.192.0.0:g' "$apnic_all_ip"
sed -i 's:/8388608$:/255.128.0.0:g' "$apnic_all_ip"
sed -i 's:/16777216$:/255.0.0.0:g' "$apnic_all_ip"
sed -i 's:/33554432$:/254.0.0.0:g' "$apnic_all_ip"
sed -i 's:/67108864$:/252.0.0.0:g' "$apnic_all_ip"
sed -i 's:/134217728$:/248.0.0.0:g' "$apnic_all_ip"
sed -i 's:/268435456$:/240.0.0.0:g' "$apnic_all_ip"
sed -i 's:/536870912$:/224.0.0.0:g' "$apnic_all_ip"
sed -i 's:/1073741824$:/192.0.0.0:g' "$apnic_all_ip"
sed -i 's:/2147483648$:/128.0.0.0:g' "$apnic_all_ip"
sed -i 's:/4294967296$:/0.0.0.0:g' "$apnic_all_ip"

sed -i 's:/255.255.255.255$:/32:g' "$apnic_all_ip"
sed -i 's:/255.255.255.254$:/31:g' "$apnic_all_ip"
sed -i 's:/255.255.255.252$:/30:g' "$apnic_all_ip"
sed -i 's:/255.255.255.248$:/29:g' "$apnic_all_ip"
sed -i 's:/255.255.255.240$:/28:g' "$apnic_all_ip"
sed -i 's:/255.255.255.224$:/27:g' "$apnic_all_ip"
sed -i 's:/255.255.255.192$:/26:g' "$apnic_all_ip"
sed -i 's:/255.255.255.128$:/25:g' "$apnic_all_ip"
sed -i 's:/255.255.255.0$:/24:g' "$apnic_all_ip"
sed -i 's:/255.255.254.0$:/23:g' "$apnic_all_ip"
sed -i 's:/255.255.252.0$:/22:g' "$apnic_all_ip"
sed -i 's:/255.255.248.0$:/21:g' "$apnic_all_ip"
sed -i 's:/255.255.240.0$:/20:g' "$apnic_all_ip"
sed -i 's:/255.255.224.0$:/19:g' "$apnic_all_ip"
sed -i 's:/255.255.192.0$:/18:g' "$apnic_all_ip"
sed -i 's:/255.255.128.0$:/17:g' "$apnic_all_ip"
sed -i 's:/255.255.0.0$:/16:g' "$apnic_all_ip"
sed -i 's:/255.254.0.0$:/15:g' "$apnic_all_ip"
sed -i 's:/255.252.0.0$:/14:g' "$apnic_all_ip"
sed -i 's:/255.248.0.0$:/13:g' "$apnic_all_ip"
sed -i 's:/255.240.0.0$:/12:g' "$apnic_all_ip"
sed -i 's:/255.224.0.0$:/11:g' "$apnic_all_ip"
sed -i 's:/255.192.0.0$:/10:g' "$apnic_all_ip"
sed -i 's:/255.128.0.0$:/9:g' "$apnic_all_ip"
sed -i 's:/255.0.0.0$:/8:g' "$apnic_all_ip"
sed -i 's:/254.0.0.0$:/7:g' "$apnic_all_ip"
sed -i 's:/252.0.0.0$:/6:g' "$apnic_all_ip"
sed -i 's:/248.0.0.0$:/5:g' "$apnic_all_ip"
sed -i 's:/240.0.0.0$:/4:g' "$apnic_all_ip"
sed -i 's:/224.0.0.0$:/3:g' "$apnic_all_ip"
sed -i 's:/192.0.0.0$:/2:g' "$apnic_all_ip"
sed -i 's:/128.0.0.0$:/1:g' "$apnic_all_ip"
sed -i 's:/0.0.0.0$:/0:g' "$apnic_all_ip"


while read line
do

isp_ip=`echo $line | awk -F'/' '{print $1}'`
isp_info=`whois -h whois.apnic.net $isp_ip | grep -E "(mnt-|netname|e-mail)" | awk '{print $2}' | xargs`

# CNC
into_cnc=`echo $isp_info | sed -n '/CNC/p'`
into_cnc_small=`echo $isp_info | sed -n '/cnc/p'`

# CHINAUNICOM
into_unicom=`echo $isp_info | sed -n '/UNICOM/p'`

# CHINATELECOM
into_chinatelecom=`echo $isp_info | sed -n '/CHINANET/p'`
into_telecom=`echo $isp_info | sed -n '/TELECOM/p'`
into_bjtel=`echo $isp_info | sed -n '/BJTEL/p'`

# CERNET
into_cernet=`echo $isp_info | sed -n '/CERNET/p'`

# CRTC
into_crtc=`echo $isp_info | sed -n '/CRTC/p'`

# CHINAMOBILE
into_cmcc=`echo $isp_info | sed -n '/CMCC/p'`
into_cmnet=`echo $isp_info | sed -n '/CMNET/p'`




if [ "${into_cnc}" != "" ];then
   echo "$line<br>" >> ${save_dir}/unicom_cnc.html
elif [ "${into_cnc_small}" != "" ];then
     echo "$line<br>" >> ${save_dir}/unicom_cnc.html
elif [ "${into_unicom}" != "" ];then
     echo "$line<br>" >> ${save_dir}/unicom_cnc.html
elif [ "${into_chinatelecom}" != "" ];then
     echo "$line<br>" >> ${save_dir}/chinatelecom.html
elif [ "${into_telecom}" != "" ];then
     echo "$line<br>" >> ${save_dir}/chinatelecom.html
elif [ "${into_bjtel}" != "" ];then
     echo "$line<br>" >> ${save_dir}/chinatelecom.html
elif [ "${into_cernet}" != "" ];then
     echo "$line<br>" >> ${save_dir}/cernet.html
elif [ "${into_crtc}" != "" ];then
     echo "$line<br>" >> ${save_dir}/crtc.html
elif [ "${into_cmcc}" != "" ];then
     echo "$line<br>" >> ${save_dir}/cmcc.html
elif [ "${into_cmnet}" != "" ];then
     echo "$line<br>" >> ${save_dir}/cmcc.html
else
     echo "$line<br>" >> ${save_dir}/othernet.html
fi

done<$apnic_all_ip

echo "###################  END  ###################<br><br>" >>${save_dir}/chinatelecom.html
echo '&copy;ClangCN.COM | <a href="http://clangcn.com/">╃苍狼山庄╃</a>' >>${save_dir}/chinatelecom.html
echo '</body>' >>${save_dir}/chinatelecom.html
echo '</html>' >>${save_dir}/chinatelecom.html

echo "###################  END  ###################<br><br>" >>${save_dir}/unicom_cnc.html
echo '&copy;ClangCN.COM | <a href="http://clangcn.com/">╃苍狼山庄╃</a>' >>${save_dir}/unicom_cnc.html
echo '</body>' >>${save_dir}/unicom_cnc.html
echo '</html>' >>${save_dir}/unicom_cnc.html

echo "###################  END  ###################<br><br>" >>${save_dir}/cmcc.html
echo '&copy;ClangCN.COM | <a href="http://clangcn.com/">╃苍狼山庄╃</a>' >>${save_dir}/cmcc.html
echo '</body>' >>${save_dir}/cmcc.html
echo '</html>' >>${save_dir}/cmcc.html

echo "###################  END  ###################<br><br>" >>${save_dir}/crtc.html
echo '&copy;ClangCN.COM | <a href="http://clangcn.com/">╃苍狼山庄╃</a>' >>${save_dir}/crtc.html
echo '</body>' >>${save_dir}/crtc.html
echo '</html>' >>${save_dir}/crtc.html

echo "###################  END  ###################<br><br>" >>${save_dir}/cernet.html
echo '&copy;ClangCN.COM | <a href="http://clangcn.com/">╃苍狼山庄╃</a>' >>${save_dir}/cernet.html
echo '</body>' >>${save_dir}/cernet.html
echo '</html>' >>${save_dir}/cernet.html

echo "###################  END  ###################<br><br>" >>${save_dir}/othernet.html
echo '&copy;ClangCN.COM | <a href="http://clangcn.com/">╃苍狼山庄╃</a>' >>${save_dir}/othernet.html
echo '</body>' >>${save_dir}/othernet.html
echo '</html>' >>${save_dir}/othernet.html


sed -i "s/strTime<br>$/$(date +"%Y-%m-%d %H:%M:%S")<br>/g" ${save_dir}/chinatelecom.html
sed -i "s/strTime<br>$/$(date +"%Y-%m-%d %H:%M:%S")<br>/g" ${save_dir}/unicom_cnc.html
sed -i "s/strTime<br>$/$(date +"%Y-%m-%d %H:%M:%S")<br>/g" ${save_dir}/cmcc.html
sed -i "s/strTime<br>$/$(date +"%Y-%m-%d %H:%M:%S")<br>/g" ${save_dir}/crtc.html
sed -i "s/strTime<br>$/$(date +"%Y-%m-%d %H:%M:%S")<br>/g" ${save_dir}/cernet.html
sed -i "s/strTime<br>$/$(date +"%Y-%m-%d %H:%M:%S")<br>/g" ${save_dir}/othernet.html

#本地服务器复制
#{
#删除N天前的旧IP文件
rm -f ${Local_Dir}/$Old_unicom_cnc
rm -f ${Local_Dir}/$Old_chinatelecom
rm -f ${Local_Dir}/$Old_cernet
rm -f ${Local_Dir}/$Old_crtc
rm -f ${Local_Dir}/$Old_cmcc
rm -f ${Local_Dir}/$Old_othernet
#重命名前一天的IP文件
mv -f ${Local_Dir}/unicom_cnc.html ${Local_Dir}/$re_unicom_cnc
mv -f ${Local_Dir}/chinatelecom.html ${Local_Dir}/$re_chinatelecom
mv -f ${Local_Dir}/cernet.html ${Local_Dir}/$re_cernet
mv -f ${Local_Dir}/crtc.html ${Local_Dir}/$re_crtc
mv -f ${Local_Dir}/cmcc.html ${Local_Dir}/$re_cmcc
mv -f ${Local_Dir}/othernet.html ${Local_Dir}/$re_othernet
#复制当天的IP文件
cp -f ${save_dir}/*.html ${Local_Dir}/
#更改权限
chown -R www:www ${Local_Dir}/*
#}
