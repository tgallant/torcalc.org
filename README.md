[http://tor-calc.timgallant.us](http://tor-calc.timgallant.us)

##Build

    npm install && bower install
    grunt server

##Contributions

I really just based the calculations on some sparse data I could find online. I would love contributions and study that would lead to this being more accurate.

##Links

Based on the links below and some preliminary comments I've recieved, it seems like the consensus is to do away with bandidth rates and just set AccountingStart and AccountingMax. This lets the relay use up as much bandwidth as it can until it hits the monthly limit. This is better since it adds faster nodes to the network, even if its for a shorter amount of time.

[https://tor.stackexchange.com/questions/791/how-to-calculate-optimal-relay-bandwidth-throughput](https://tor.stackexchange.com/questions/791/how-to-calculate-optimal-relay-bandwidth-throughput)

[https://www.torproject.org/docs/faq.html.en#LimitTotalBandwidth](https://www.torproject.org/docs/faq.html.en#LimitTotalBandwidth)

[https://www.torproject.org/docs/faq.html.en#BandwidthShaping](https://www.torproject.org/docs/faq.html.en#BandwidthShaping)

[https://lists.torproject.org/pipermail/tor-dev/2014-September/007559.html](https://lists.torproject.org/pipermail/tor-dev/2014-September/007559.html]

[https://lists.torproject.org/pipermail/tor-dev/2014-September/007560.html](https://lists.torproject.org/pipermail/tor-dev/2014-September/007560.html)

[https://lists.torproject.org/pipermail/tor-relays/2014-November/005850.html](https://lists.torproject.org/pipermail/tor-relays/2014-November/005850.html)

[https://lists.torproject.org/pipermail/tor-relays/2011-September/000951.html](https://lists.torproject.org/pipermail/tor-relays/2011-September/000951.html)

##TODO

* Remove BandwidthRate and BandwidthBurst calculation
* Add simple calculation for AccountingMax (bandwidth/mo - 5GB so there is enough bw for managing, etc.)
* Incorporate the links above into a resources section
* Add additional info about best practices for Bandwidth utilization
* Add additional options for generating torrc files
