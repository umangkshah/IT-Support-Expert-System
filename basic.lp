#include 'input.lp'.

keyword(laptop):- exists(lappy).  
keyword(laptop):- exists(computer). 
keyword(laptop):- exists(notebook). 
keyword(laptop):- exists(laptop). 
keyword(laptop):- exists(machine). 
keyword(laptop):- exists(lappys). 
keyword(laptop):- exists(computers). 
keyword(laptop):- exists(notebooks). 
keyword(laptop):- exists(laptops). 
keyword(laptop):- exists(machines). 
keyword(laptop):- exists(lenovo). 
keyword(laptop):- exists(thinkpad). 

keyword(thinkvantage):- exists(thinkvantage).
keyword(version):- exists('y410').
keyword(version):- exists('z50').
keyword(version):- exists('k100').
keyword(version):- exists(thinkpad). 

keyword(fru):- exists(fru).
keyword(parts):- exists(fru).
keyword(parts):- exists(smps).
keyword(smps):- exists(smps).
keyword(parts):- exists(parts).
keyword(parts):- exists(part).
keyword(parts):- exists(fan).
keyword(parts):- exists(gpu).
keyword(parts):- exists(vga).

keywords(ports):-exists(usb).
keywords(ports):-exists(lan).
keywords(ports):-exists(vga).
keywords(ports):-exists(hdmi).
keywords(ports):-exists(ethernet).
keywords(ports):-exists(ps2).
keywords(ports):-exists(pendrive).
keywords(ports):-exists(pen),exists(drive).

keyword(shipping):- exists(ship).
keyword(shipping):- exists(ships).
keyword(shipping):- exists(shipping).
keyword(shipping):- exists(shipped).
keyword(shipping):- exists(track).
keyword(shipping):- exists(tracking).
keyword(shipping):- exists(tracks).
keyword(shipping):- exists(tracked).

keywords(pixel):- exists(pixel).
keywords(pixel):- exists(pixels).

keywords(ethernet):-exists(ethernet).

keyword(start):- exists(begin).
keyword(start):- exists(begins).
keyword(start):- exists(load).
keyword(start):- exists(loads).
keyword(start):- exists(start).
keyword(start):- exists(starts).
keyword(start):- exists(turn).

keyword(fail):- exists(fail).
keyword(fail):- exists(fails).
keyword(fail):- exists(broken).
keyword(fail):- exists(damaged).
keyword(fail):- exists(breaks).
keyword(fail):- exists(failing).

keyword(damage):- exists(damaged).
keyword(damage):- exists(damage).

keyword(screen):- exists(screen).

keyword(display):- exists(display).
keyword(display):- exists(displays).
keyword(display):- exists(show).
keyword(display):- exists(shows).

keyword(windows):- exists(win).
keyword(windows):- exists(windows).

keyword(window):- exists(window).

keyword(video):- exists(video).

keyword(slow):- exists(slow).

keyword(recovery):- exists(recovery).
keyword(recovery):- exists(backup).
keyword(recovery):- exists(restore).
keyword(recovery):- exists(recover).
keyword(recovery):- exists(rescue).
keyword(recovery):- exists(rescues).
keyword(recovery):- exists(restoration).
keyword(recovery):- exists(back),exists(up).

keyword(malware):- exists(virus).
keyword(malware):- exists(viruses).
keyword(malware):- exists(worm).
keyword(malware):- exists(worms).
keyword(malware):- exists(malware).
keyword(malware):- exists(malwares).
keyword(malware):- exists(spyware).
keyword(malware):- exists(spywares).
keyword(malware):- exists(infection).

keywords(vista):- exists(vista).
keywords(vista):- exists(winvista).

keyword(xp):- exists(xp).
keyword(xp):- exists(winxp).

keyword(warranty):- exists(warranty).
keyword(warranty):- exists(guarantee).
keyword(warranty):- exists(coverage).
keyword(warranty):- exists(service).

keyword(replace):- exists(replace).
keyword(replace):- exists(change).
keyword(replace):- exists(old),exists(new).

keyword(change):- exists(old),exists(new).

keyword(new):- exists(new).

keyword(support):- exists(support).
keyword(support):- exists(help).
keyword(support):- exists(tips).
keyword(support):- exists(tip).

keyword(connect):-exists(connect).
keyword(connect):-exists(wireless).
keyword(connect):-exists(wired).

keyword(service):- exists(service).
keyword(service):- exists(services).

keyword(center):- exists(center).
keyword(center):- exists(centre).

keyword(contact):- exists(contact).
keyword(contact):- exists(contacts).
keyword(contact):- exists(touch).

keyword(driver):- exists(driver).
keyword(driver):- exists(drivers).

keyword(software):- exists(sw).
keyword(software):- exists(software).
keyword(software):- exists(softwares).

keyword(battery):- exists(battery).
keyword(battery):- exists(power).
keyword(battery):- exists(charge).
keyword(battery):- exists(charging).

keyword(power):- exists(power).

keyword(country):- exists(country).

keyword(manual):- exists(manual).
keyword(manual):- exists(guide).

keyword(customer):- exists(customer).
keyword(customer):- exists(customers).
keyword(customer):- exists(user).
keyword(customer):- exists(users).

keyword(accessory):- exists(accessory).
keyword(accessory):- exists(accessories).
keyword(accessory):- exists(mouse).
keyword(accessory):- exists(keyboard).
keyword(accessory):- exists(webcam).
keyword(accessory):- exists(cam).
keyword(accessory):- exists(camera).
keyword(accessory):- exists(tablet).
keyword(accessory):- exists(mic).
keyword(accessory):- exists(microphone).
keyword(accessory):- exists(card).
keyword(accessory):- exists(card),exists(reader).
keyword(accessory):- exists(cardreader).
keyword(accessory):- exists(cd).
keyword(accessory):- exists(dvd).
keyword(accessory):- exists(cd),exists(drive).
keyword(accessory):- exists(dvd),exists(drive).
keyword(accessory):- exists(fingerprint),exists(reader).
keyword(accessory):- exists(fingerprint).
keyword(accessory):- exists(finger),exists(print),exists(reader).
keyword(accessory):- exists(finger),exists(print).

keyword(fingerprint):- exists(fingerprint),exists(reader).
keyword(fingerprint):- exists(fingerprint).
keyword(fingerprint):- exists(finger),exists(print),exists(reader).
keyword(fingerprint):- exists(finger),exists(print).

keyword(drive):- exists(cd).
keyword(drive):- exists(dvd).
keyword(drive):- exists(cd),exists(drive).
keyword(drive):- exists(dvd),exists(drive).

keyword(card):- exists(card).
keyword(card):- exists(card),exists(reader).
keyword(card):- exists(cardreader).

keyword(camera):- exists(cam).
keyword(camera):- exists(camera).
keyword(camera):- exists(cameras).

keyword(bluetooth):- exists(bluetooth).

keyword(bluescreen):- exists(blue),exists(screen).

keyword(lock):- exists(lock).
%keyword(X):- exists(X).
keyword(hang):- exists(hangs).
keyword(hang):- exists(stuck).
keyword(hang):- exists(frozen).
keyword(hang):- exists(freeze).
keyword(hang):- exists(hang).

keyword(docking):- exists(docking).

keyword(station):- exists(station).

keyword(keyboard):- exists(keyboard).

keyword(mouse):- exists(mouse).

keyword(memory):- exists(memory).

keyword(modem):- exists(modem).

keyword(projector):- exists(projector).

keyword(sound):- exists(sound).

keyword(specifications):- exists(specs).
keyword(specifications):- exists(specifications).
keyword(specifications):- exists(specification).

keyword(recognize):- exists(recognize).

keyword(identify):- exists(identify).

keyword(issue):- exists(trouble).
keyword(issue):- exists(troubles).
keyword(issue):- exists(problem).
keyword(issue):- exists(problems).
keyword(issue):- exists(issue).
keyword(issue):- exists(issues).

keyword(list):- exists(list).
keyword(list):- exists(listing).
keyword(list):- exists(listings).

keyword(ultranav):- exists(ultranav).
keyword(trackpoint):- exists(trackpoint).

keyword(security):- exists(security).
keyword(security):- exists(secure).
keyword(security):- exists(firewall).
keyword(security):- exists(prevent).
keyword(security):- exists(prevents).
keyword(security):- exists(protect).
keyword(security):- exists(protection).
keyword(security):- exists(protects).

%keyword():- exists().

#compute 0 {keyword(KWD)}.