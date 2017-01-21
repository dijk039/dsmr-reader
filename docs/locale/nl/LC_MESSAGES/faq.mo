��    C      4  Y   L      �  0   �  )   �  9     1   F  '   x  %   �  h   �  9   /  �  i  v  �     p
  �   �
  �   &     �     �       �     �   �    �  �   �     `          �     �      �     �        #   '  9   K  8   �     �  �   �  �   u  �  �  e   �  <    �   B  �   �  1   �  "        1     J    _  �   b      E  b   f  ]   �  8  '  B   `  o   �  s     "   �  �   �  �   <  �   �  	  �  \   �   y   *!  W   �!  =   �!  �   :"  �   �"  �   Y#  $   $  ^   4$  C   �$  �  �$  ;   �&  0   �&  5   '  1   K'  '   }'  '   �'  s   �'  E   A(  �  �(  �  #*  '   �+  �   �+  �   {,     >-     S-    Z-  �   r.  �   )/    	0  �   !1  %   �1     2     *2  $   J2     o2     �2  %   �2  %   �2  4   �2  :   )3     d3  �   |3  �   A4  �  �4  �   �6  f  @7  �   �8  �   P9  4   P:  .   �:     �:     �:    �:    �;  2   �<  c   ,=  \   �=  a  �=  >   O?  �   �?  �   @  5   �@  �   �@  �   �A    B  ?  $C  m   dD  �   �D  p   `E  H   �E  �   F  �   �F  �   NG  "   H  ]   @H  C   �H     ?              5   #   0   >             B   .      @       2   C   8                    '   =       <         :   &       ;   $                     4           (   	   6   A              )   3         7      /                              !      +   9   1   %   ,             *      
   -                    "               *How can I link my Dropbox account for backups?* *How can I link my mindergas.nl account?* *How can I propose a feature or report a bug I've found?* *How do I obtain my API key for NotifyMyAndroid?* *How do I obtain my API key for Prowl?* *How do I setup usage notifications?* *I've adjusted my energy prices but there are no changes! How can I regenerate them with my new prices?* *Which services for sending notifications are supported?* After you have downloaded NotifyMyAndroid and signed up for an account you should be able to `login to your NotifyMyAndroid account <https://www.notifymyandroid.com/index.jsp>`_. Now go to "`My Account <https://www.notifymyandroid.com/account.jsp>`_", you should see an overview of your current API keys if you have any. To create an API key for the DSMR-reader, please click **"Generate New Key"**. After you have downloaded Prowl and signed up for an account you should be able to `login to your Prowl account <https://www.prowlapp.com/login.php>`_. Now go to "`API Keys <https://www.prowlapp.com/api_settings.php>`_", you should see an overview of your current API keys if you have any. To create an API key for the DSMR-reader, input a name and click **"Generate Key"**. Apply any database migrations. Before updating, **please make sure you have a recent backup of your database**! :doc:`More information about backups can be found here<application>`. Choose the following options: (1) **Dropbox API** and (2) **App folder**. Then enter a name for your app (3), this will also be used as directory name within the Apps-folder of your Dropbox. Clear any caches. Contents Copy the authentication token generated and paste in into the DSMR-reader settings for the Mindergas.nl-configuration. Obviously the export only works when there are any gas readings at all and you have ticked the 'export' checkbox in the Mindergas.nl-configuration as well. Copy the generated access token to the DSMR-reader settings for the Dropbox-configuration. The DSMR-reader application should sync any backups created shortly. Currently, two mobile platforms are supported: Android and iOS. The supported app for Android is `NotifyMyAndroid <https://www.notifymyandroid.com>`_. The supported app for iOS is `Prowl <https://www.prowlapp.com>`_. DSMR (and your energy supplier) always read both high and low tariff from your meter. It's possible however that you are only paying for a single tariff. In that case your energy supplier will simply merge both high and low tariffs to make it look like you have a single one. Do you need a complete reinstall of DSMR-reader as well? Then please :doc:`follow the install guide<installation>` and restore the database backup **using the notes at the end of chapter 1**. Dropbox: Automated backup sync Feature/bug report For **MySQL** restores:: For **PostgreSQL** restores:: Frequently Asked Questions (FAQ) GIT pull (codebase update). How can I update my application? How do I restore a database backup? I only pay for a single electricity tariff but I see two! I want to see the load of each electricity phase as well I'm not seeing any gas readings Importing the data could take a long time. It took MySQL 15 minutes to import nearly 3 million readings, from a compressed backup, on a RaspberryPi 3. In case the version differs, you can try forcing a deployment reload by: ``sudo su - dsmr`` and then executing ``./post-deploy.sh``. In the DSMR-reader settings for the Usagenotifications, tick the Send Notifications checkbox and select the notification service you want to use. Then copy the API key from the notification service and paste in into the the textbox for the API key. When you save these settings, your first notification should be sent after midnight. Don't worry, the notification will be sent with low priority and will not wake you up. It will make sure to check, fetch and apply any changes released. Summary of deployment script steps: Make sure you either have NotifyMyAndroid or Prowl installed on your smartphone. If you don't, visit your platforms app store to download the app and sign up for an account. Then, make sure to get your API key from the notificationservice that you prefer. For instruction on obtaining the API key, please read below. Make sure you have a Dropbox-account or sign up for one. Now go to `Dropbox Apps <https://www.dropbox.com/developers/apps>`_ and click **"Create app"** in top right corner. Make sure you have a Mindergas.nl-account or `signup for one <https://www.mindergas.nl/users/sign_up>`_. Now go to "`Meterstand API <https://www.mindergas.nl/member/api>`_" and click on the button located below **"Authenticatietoken"**. Mindergas.nl: Automated gas meter position export Only want to restore the database? PIP update requirements. Please keep in mind: Please make sure that your meter supports reading gas consumption and that you've waited for a few hours for any graphs to render. The gas meter positions are only be updated once per hour (for DSMR v4). The Status page will give you insight in this as well. Please note that due to policies of mindergas.nl it's not allowed to retroactively upload meter positions using the API. Therefor this is not supported by the application. You can however, enter them manually on their website. Recalculate prices retroactively Reload Gunicorn application server (web interface) and backend processes (such as the datalogger). Restoring a backup will replace any existing data stored in the database and is irreversible! Since ``DSMR-reader v1.5`` it's possible to track your ``P+`` (consumption) phases as well. You will need to enable this in the ``Datalogger configuration``. There is a setting called ``Track electricity phases``. When active, this will log the current usage of those phases and plot these on the Dashboard page. Start the application again with ``sudo supervisorctl start all``. Statistics for each day are generated once, the day after. However, you can flush your statistics by executing: Stop the application first with ``sudo supervisorctl stop all``. This will disconnect it from the database as well. Sync static files to Nginx folder. The app should be created in developer-mode. You can generate an access token for yourself by clicking the **"Generate"** button somewhere below. The application will delete all statistics and (slowly) regenerate them in the background. Just make sure the source data is still there. The version you are running is always based on the 'latest' version of the application, called the `master` branch. Every once in a while there may be updates. Since ``v1.5`` you can also easily check for updates by using the application's Status page. This application displays separate tariffs by default, but supports merging them to a single one as well. Just make sure that you apply the **same price to both electricity 1 and 2** and enable the option ``Merge electricity tariffs`` in the frontend configuration. This asumes you are still running the same application version as the backup was created in. This feature will only work when your smart meter is connected to **three phases**. Even when having the setting enabled. This will **not work retroactively**. The datalogger always discards all data not used. Usage notification: Daily usage statistics on your smartphone When a new key is generated, you will see it immediatly. Your key is listed like in the screenshot below (the red box marks your API key). When having tracking phases enabled, you should see a button in the Dashboard called ``Display electricity phases``. Click on it to show the graph. You can update your application to the latest version by executing **upgrade.sh**, located in the root of the project. Make sure to execute it while logged in as the ``dsmr`` user:: You should see something similar to: `Just create a ticket at Github <https://github.com/dennissiemensma/dsmr-reader/issues/new>`_. ``./manage.py dsmr_stats_clear_statistics --ack-to-delete-my-data`` Project-Id-Version: DSMR Reader v1.x
Report-Msgid-Bugs-To: Dennis Siemensma <github@dennissiemensma.nl>
POT-Creation-Date: 2017-01-21 18:29+0100
PO-Revision-Date: 2017-01-21 18:30+0100
Last-Translator: Dennis Siemensma <github@dennissiemensma.nl>
Language-Team: Dennis Siemensma <github@dennissiemensma.nl>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.3.4
Language: nl
X-Generator: Poedit 1.8.7.1
 *Hoe kan ik mijn Dropbox-account koppelen voor de backups?* *Hoe kan ik mijn mindergas.nl-account koppelen?* *Hoe kan ik een verzoek indienen of een fout melden?* *Hoe haal ik de API key op voor NotifyMyAndroid?* *Hoe haal ik de API key op voor Prowl?* *Hoe stel ik verbruiksnotificaties in?* *Ik heb zojuist mijn energieprijzen aangepast, maar ik zie geen verschil! Hoe kan ik de nieuwe prijzen doorvoeren?* *Welke services voor het sturen van notificaties worden ondersteund?* Nadat je NotifyMyAndroid hebt gedownload en een account hebt aangemaakt zou je moeten kunnen `inloggen op je NotifyMyAndroid-account <https://www.notifymyandroid.com/index.jsp>`_. Ga nu naar "`My Account <https://www.notifymyandroid.com/account.jsp>`_" om een overzicht van je account de API keys te krijgen als je deze al hebt. Om een API key voor de DSMR-reader te genereren klik je op **"Generate New Key"**. Nadat je Prowl hebt gedownload en een account hebt aangemaakt zou je moeten kunnen `inloggen op je Prowl-account <https://www.prowlapp.com/login.php>`_. Ga nu naar "`API Keys <https://www.prowlapp.com/api_settings.php>`_" om een overzicht van je API keys te krijgen als je deze al hebt. Om een API key voor de DSMR-reader te genereren geef je een naam op en klik je op **"Generate Key"**. Past openstaande databasemigraties toe. Voordat je bijwerkt, **zorg ervoor dat je in ieder geval een recente back-up van je database hebt**! :doc:`Meer informatie over back-ups kun je hier vinden<application>`. Kies de volgende opties:  (1) **Dropbox API** en (2) **App folder**. Voer vervolgens een naam voor je app in (3), deze wordt ook gebruikt als naam van de submap binnen je Apps-folder in Dropbox. Gooit de cache leeg. Inhoud Kopieer de gegenereerde authenticatietoken in de DSMR-reader instellingen onder Mindergas.nl-configuratie. Vanzelfsprekend werkt deze feature alleen wanneer er gas gemeten wordt, en wanneer je de optie 'Exporteer gegevens naar MinderGas' aangevinkt hebt in dezelfde configuratie. Kopieer de gegenereerde toegangstoken naar de DSMR-reader instellingen onder Dropbox-configuratie. DSMR-reader zou vrij vlot gemaakte backups moeten uploaden naar je Dropbox-account. Op dit moment worden twee platforms ondersteund: Android en iOS. De ondersteunde app voor Android is `NotifyMyAndroid <https://www.notifymyandroid.com>`_. De ondersteunde app voor iOS is `Prowl <https://www.prowlapp.com>`_. DSMR (en je energieleverancier) lezen altijd zowel hoog als laag tarief van je meter uit. Het is desondanks mogelijk dat je betaalt voor slechts één tarief. In dat geval voegt jouw energieleverancier het hoge en lage tarief samen zodat het lijkt alsof je een enkel tarief hebt. Heb je tevens een complete herinstallatie van DSMR-reader nodig? :doc:`Volg dan de installatiehandleiding<installation>` en herstel de databaseback-up volgens  **de notities aan het einde van hoofdstuk 1**. Dropbox: Automatisch backups uploaden Verzoek/fout melden Voor herstellen van **MySQL**:: Voor herstellen van **PostgreSQL**:: Veelgestelde vragen (FAQ) GIT pull (codebase bijwerken). Hoe kan ik mijn applicatie bijwerken? Hoe zet ik een databaseback-up terug? Ik betaal voor een enkel tarief maar ik zie er twee! Ik wil het elektriciteitsverbruik per fase ook kunnen zien Ik zie geen gasverbruik Het importeren van de gegevens kan enige tijd in beslag nemen. Op MySQL duurt het ongeveer een kwartier om 3 miljoen metingen te importeren, vanuit een gecomprimeerde back-up op een RaspberryPi 3. Mocht de versie toch verschillen, dan kun je proberen om de applicatie te herladen. Log in met: ``sudo su - dsmr`` en voer vervolgens ``./post-deploy.sh`` uit. In de DSMR-reader instellingen voor de Verbruiksnotificaties zet je een vinkje bij Stuur Notificaties en selecteer daaronder welke notificatieservice je wilt gebruiken. Kopieeër daarna de API key van de notificatieservice en plak deze in het tekstveld voor de API key. Als je deze instellingen opslaat zul je na middernacht je eerste notificatie ontvangen. Geen nood, de notificatie wordt altijd verstuurd met lage prioriteit, deze maakt je dus niet wakker. Dit zorgt ervoor dat alle wijzigingen op een juiste volgorde worden binnengehaald en toegepast. Een overzicht van wat dit uitrol-script exact doet: Zorg ervoor dat je NotifyMyAndroid of Prowl hebt geïnstalleerd op je smartphone. Als dat niet het geval is, bezoek dan de app store van je platform, download de gewenste app en maak daarvoor een account. Daarna haal je de API key voor de notificatieservice die je wilt gebruiken op. Om te lezen hoe dat werkt, lees dan de instructies bij de volgende kopjes. Zorg allereerst dat je een Dropbox-account hebt. Ga vervolgens naar `Dropbox Apps <https://www.dropbox.com/developers/apps>`_ en klik op **"Create app"** rechtsbovenin. Zorg ervoor dat je een mindergas.nl-account hebt of `registreer je op hun website <https://www.mindergas.nl/users/sign_up>`_. Ga nu naar "`Meterstand API <https://www.mindergas.nl/member/api>`_" en klik op de knop onder het kopje **"Authenticatietoken"**. Mindergas.nl: Automatisch gasmeterstanden exporteren Wil je alleen een databaseback-up terugzetten? Update PIP afhankelijkheden. Houd in gedachten: Wees er allereerst zeker van dat je slimme meter uberhaupt gasverbruik registreert, en dat je een paar uur hebt gewacht. De gasmeterstanden worden sowieso slechts een keer per uur bijgewerkt (voor DSMR v4). De Status-pagina geeft je hier overigens ook inzicht in. N.B.: Wegens het beleid van mindergas.nl is het niet toegestaan om met terugwerkende kracht meterstanden door te geven via de API. De applicatie ondersteunt dat om die reden niet. Je kunt oude meterstanden echter wel via hun website handmatig invoeren, indien gewenst. Prijzen opnieuw berekenen met terugwerkende kracht Herlaadt de Gunicorn-applicatieserver (webinterface) en achtergrondprocessen (zoals de datalogger). Het herstellen van een back-up vervangt de bestaande data in de database en is onomkeerbaar! Sinds ``DSMR-reader v1.5`` is het mogelijk om je ``P+`` (verbruik) elektriciteitsfasen in te zien. Dit is een aparte optie die je zelf moet inschakelen in ``Dataloggerconfiguratie``. De instelling heet daar ``Houd elektriciteitsfasen bij``. Zodra ingeschakeld, zal de applicatie het verbruik per fase vastleggen in tonen in een grafiek in het Dashboard. Start de applicatie weer met ``sudo supervisorctl start all``. Dagstatistieken worden dagelijks eenmalig gegenereerd. Het is echter wel mogelijk om deze te resetten door het volgende te doen: Stop als eerste de applicatie met ``sudo supervisorctl stop all``. Dit zorgt er ook voor dat de databaseverbinding van de applicatie verdwijnt. Synchroniseert statische bestanden naar de Nginx map. The app is als het goed is nu aangemaakt in developer-modus. Je kunt nog een toegangstoken genereren door op de knop **"Generate"** te klikken, die verderop onderaan de pagina staat. De applicatie verwijdert alle statistieken en genereert ze (langzaam) weer op de achtergrond. Zorg er wel voor dat alle brongegevens intact zijn. De versie die je draait is altijd gebaseerd op de 'laatste' versie van de applicatie, ook wel de `master` branch genoemd. Met enige regelmaat zijn er updates beschikbaar. Sinds ``v1.5`` kun je dit ook eenvoudig controleren op de Status-pagina van de applicatie. Deze applicatie weergeeft standaard gescheiden tarieven, maar heeft wel ondersteuning om ze samen te voegen (net zoals je energieleverancier doet). Zorg er wel voor dat je **dezelfde prijs invult bij hoog en laag tarief voor elektriciteit** en dat je de optie ``Voeg tarieven samen`` aanzet in de interfaceconfiguratie. Dit gaat er overigens wel van uit dat je dezelfde applicatie-versie draait als waarmee de back-up is gemaakt. Deze feature werkt alleen wanneer je slimme meter ook daadwerkelijk is aangesloten op **drie fasen**. Zelfs wanneer de optie is ingeschakeld. Dit werkt **niet met terugwerkende kracht**. De datalogger gooit namelijk alle gegevens weg die niet nodig zijn. Verbruiksnotificaties: Dagelijkse verbruiksstatistieken op je smartphone Als er een nieuwe key is gegenereerd, zie je deze direct. De key is te vinden zoals in onderstaande screenshot (er staat een rood kader om de key). Wanneer het bijhouden van de fasen is ingeschakeld, zie je op het Dashboard een knop genaamd ``Toon elektriciteitsfasen``. Klik die aan om de grafiek te tonen. Je kun je applicatie bijwerken door het script **upgrade.sh** uit te voeren, die in zich in de hoofdmap van het project bevindt. Zorg er wel voor dat je ingelogd bent als ``dsmr`` gebruiker op de terminal:: Je zult iets zien in de trend van: `Maak een ticket aan op Github <https://github.com/dennissiemensma/dsmr-reader/issues/new>`_. ``./manage.py dsmr_stats_clear_statistics --ack-to-delete-my-data`` 