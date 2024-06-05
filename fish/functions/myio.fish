function myip
    set ipv4 (curl -4 -s https://ifconfig.io)
    set ipv6 (curl -6 -s https://ifconfig.io)

    echo "IPv4: $ipv4"
    echo "IPv6: $ipv6"
end

