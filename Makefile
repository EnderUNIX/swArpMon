install:
	install -o root -g wheel -m 755 managedb swArpMon /usr/local/bin
	install -o root -g wheel -m 644 swArpMon.conf /usr/local/etc
	mkdir -p /usr/local/share/swArpMon
	@echo ""
	@echo "+-------------------------------------+"
	@echo "|    swArpMon - Switch ARP Monitor    |"
	@echo "|        EnderUNIX SDT @ Turkey       |"
	@echo "+-------------------------------------+"
	@echo "|   Please Edit Configuration File:   |"
	@echo "|    /usr/local/etc/swArpMon.conf     |"
	@echo "+-------------------------------------+"
	@echo "|   Add following lines to crontab:   |"
	@echo "| */5 * * * * /usr/local/bin/swArpMon |"
	@echo "+-------------------------------------+"
	@echo "|   To Manage Switch Database, run:   |"
	@echo "|      /usr/local/bin/managedb        |"
	@echo "+-------------------------------------+"
	@echo ""

uninstall:
	rm /usr/local/bin/swArpMon /usr/local/bin/managedb /usr/local/etc/swArpMon.conf
	@echo "+----------------------------------------+"
	@echo "|     swArpMon - Switch ARP Monitor      |"
	@echo "|         EnderUNIX SDT @ Turkey         |"
	@echo "+----------------------------------------+"
	@echo "| /usr/local/share/swArpMon not removed. |"
	@echo "| Please remove it manually.             |"
	@echo "+----------------------------------------+"
	@echo ""
