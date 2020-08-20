# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Analysis.destroy_all
Child.destroy_all
User.destroy_all
Disease.destroy_all

u1 = User.new(first_name: "Paula", last_name: "Pisa", email: "paula@test.fr", password: "123456")
u1.save!

e1 = Child.new(first_name: "Lola", birth_date: Date.new(2019, 11, 10), weight: 500, cardiac: false, respiratory: false, prematurity: false)
e1.user = u1
e1.save!

a1 = Analysis.new(symptoms: ["toux"])
a1.child = e1
a1.save!


d1 = Disease.new(name: "Fièvre", symptoms: ["fièvre"], behavior: " Découvrez votre enfant (vêtements légers dans une pièce aérée non surchaufée -18-20°.\n
Donnez lui à boire +++.\n
Ces mesures simples sont suffisantes dans bien des cas !\n
Les bains tièdes et les enveloppements de linges humides ne sont plus recommendés.\n
Les médicaments : Avant l’avis de votre médecin traitant, ne donnez qu’un seul médicament antipyrétique (=contre la fièvre) à la fois :Paracétamol (doliprane, efferalgan, dolko, dafalgan) toutes les 6 heures (privilégiez la voie orale). Attention de ne pas associer plusieurs médicaments contenant les mêmes molécules(ou des molécules de la même famille) ex :doliprane et efferalgan", when_consult: "Après 48 heures en suivant les mesures préconnisées dans la conduite à tenir.\n
Si votre enfant est très endormi difficile à tirer du sommeil, s’il a une éruption cutanée, une gêne respiratoire.\n
S’il manifeste d’autres symptômes qui vous inquiètent", need_know: "On considère qu’un enfant a de la fièvre quand sa température dépasse 38°C. Généralement, ce n’est qu’au-dessus de 38,5°C que l’on envisage un traitement. \n
Il n’est pas nécessaire de traiter systématiquement la fièvre surtout si elle est bien supportée par l’enfant. Le but du traitement n’est pas de normaliser à tout prix la température, mais d’améliorer le confort de l’enfant. \n
L’ampleur de la fièvre n’est pas corrélée à la maladie, le comportement de l’enfant est plus révélateur (en effet, on peut observer une forte fièvre chez un enfant atteint d’une infection bénigne et ne relever aucune élévation de température chez un enfant souffrant d’une très grave infection. \n
La fièvre fait partie d’un processus complexe de défense de l’organisme, c’est une réponse aux infections : les agents infectieux ont tendance à moins bien se développer lorsque la température s’élève et les cellules de défense de l’organisme (les lymphocytes T et B) sont plus efficaces lorsque le corps est à 39°C (certaines publications indiquent même que le traitement de la fièvre retarderait la guérison de certaines infections virales !).\n
Les convulsions : elles ne sont pas systématiques dès que la température s’élève. Seuls certains enfants (souvent avec un caractère familial) ont une susceptibilité particulière et peuvent convulser (et pour eux, même avant 39°C !). Ces convulsions sont sans gravité, ne durent que quelques instants mais sont très impressionnantes !\n
La température se mesure avec un thermomètre (au mieux en rectal). La notion ‘il est chaud’ ne veut rien dire", prevention: "Réaction de défense face à un virus")

d1.save!

d2 = Disease.new(name: "Toux", symptoms: ["toux"], behavior:" Les médicaments contre la toux ne servent à rien et ne sont pas conseillés. Nettoyer le nez au moins 6 fois par jour avec du sérum physiologique, en particulier avant de lui donner à boire ou à manger.\n
Lui donner régulièrement de l’eau à boire pour éviter la déshydratation.\n
Fractionner  ses repas (lui donner à manger plus souvent et en plus petites quantités).\n
Bien aérer toutes les pièces du logement ( particulièrement la pièce où il dort).\n
Ne pas trop le couvrir.\n
Continuer à le coucher sur le dos à plat.\n
Ne jamais fumer près de lui. ", when_consult: "Il est préférable de se rendre rapidement aux urgences : \n
Si votre enfant boit moins de la moitié de ses biberons à trois repas consécutifs.\n
Il vomit systématiquement.\n
Il dort en permanence, ou au contraire, pleure de manière inhabituelle et ne peut s’endormir.\n
Sa respiration est détériorée : il fait plus de bruit en respirant, il tousse davantage, sa respiration est plus rapide (plus de 40 respirations par minutes). On observe un battement des ailes du nez. On note un tirage intercostal ( le thorax se creuse).
Sinon consultez votre médecin traitant qui examinera votre enfant et prescrira les soins nécessaires", need_know: " La bronchiolite débute par un simple rhume et l’enfant tousse un peu. Puis la toux est plus fréquente, la respiration peut devenir sifflante. L’enfant peut être gêné pour respirer et avoir du mal à manger et à dormir. Il peut avoir de la fièvre.\n
Dans la majorité des cas, la bronchiolite guérit spontanément au bout de 5 à 10 jour mais peut persister pendant 2 à 4 semaines.La bronchiololite est une maladie respiratoire très fréquentes chez les nourrissons et les enfants de moins de 2 ans. Elle est due le plus souvent à un virus appelé Virus Respiratoire Syndical (VRS) qui touche les petites bronches.\n
Les épidémies de bronchiolite débutent généralement au cours du mois d’octobre et se terminent courant janvier.", prevention: "La bronchiolite est une maladie très contagieuse.\n
Les adultes et les grands enfants qui sont porteurs du virus respiratoire syncytial n’ont habituellement aucun signe ou ont un simple rhume. Le virus se transmet facilement par la salive, la toux, et les éternuements.\n
Le virus peut rester sur les mains et les objects (comme sur les jouets, les tétines, les « doudous ».\n
Se laver les mains pendant 30 secondes avec de l’eau et du savon avant et après un change, une têtée, calîns, biberon, repas, etc. ou en utilisant une solution hydroalcoolique.\n
Evitez, quand cela est possible, d’emmener son enfant dans les endroits publics confinés (transports en commun, centres commerciaux, etc.) où il risquerait d’être en contact avec des personnes enrhumées.\n
Ne pas partager les biberons, sucettes ou couverts non lavés.\n
Lavez régulièrement jouets et doudous.
Ouvrez les fenêtres de la pièce où il dort au moins 10 minutes par jour pour aérer. Maintenir la température de la pièce aux alentours de 19°C\n
En ne fumant pas à côté des bébés et des enfants.\n
Lorsque l’on est soi-même enrhumé se couvrir la bouche lorsque l’on tousse avec son coude ou sa manche. Portez un masque lorsque l’on s’occupe de son bébé. Evitez d’embrasser son enfant sur le visage et sur les mains.")

d2.save!

d3 = Disease.new(name: "Rhume", symptoms: ["toux"], behavior:" Nettoyer le nez au moins 6 fois par jour avec du sérum physiologique, en particulier avant de lui donner à boire ou à manger.\n
Lui donner régulièrement de l’eau à boire pour éviter la déshydratation.\n
Fractionner  ses repas (lui donner à manger plus souvent et en plus petites quantités).\n
Bien aérer toutes les pièces du logement ( particulièrement la pièce où il dort).\n
Continuer à le coucher sur le dos à plat.\n
Ne jamais fumer près de lui. ", when_consult: "Il est préférable de se rendre rapidement aux urgences : \n
Si votre enfant boit moins de la moitié de ses biberons à trois repas consécutifs.\n
Il vomit systématiquement.\n
Il dort en permanence, ou au contraire, pleure de manière inhabituelle et ne peut s’endormir.\n
Sinon consultez votre médecin traitant qui examinera votre enfant et prescrira les soins nécessaires", need_know: " La bronchiolite peut débuter par un simple rhume et l’enfant tousse un peu. Puis la toux est plus fréquente, la respiration peut devenir sifflante. L’enfant peut être gêné pour respirer et avoir du mal à manger et à dormir. Il peut avoir de la fièvre.\n
Dans la majorité des cas, la bronchiolite guérit spontanément au bout de 5 à 10 jour mais peut persister pendant 2 à 4 semaines.La bronchiololite est une maladie respiratoire très fréquentes chez les nourrissons et les enfants de moins de 2 ans. Elle est due le plus souvent à un virus appelé Virus Respiratoire Syndical (VRS) qui touche les petites bronches.\n
Les épidémies de bronchiolite débutent généralement au cours du mois d’octobre et se terminent courant janvier.", prevention: "La bronchiolite est une maladie très contagieuse.\n
Les adultes et les grands enfants qui sont porteurs du virus respiratoire syncytial n’ont habituellement aucun signe ou ont un simple rhume. Le virus se transmet facilement par la salive, la toux, et les éternuements.\n
Le virus peut rester sur les mains et les objets (comme sur les jouets, les tétines, les « doudous ».\n
Se laver les mains pendant 30 secondes avec de l’eau et du savon avant et après un change, une tétée, câlins, biberon, repas, etc. ou en utilisant une solution hydroalcoolique.\n
Evitez, quand cela est possible, d’emmener son enfant dans les endroits publics confinés (transports en commun, centres commerciaux, etc.) où il risquerait d’être en contact avec des personnes enrhumées.\n
Ne pas partager les biberons, sucettes ou couverts non lavés.\n
Lavez régulièrement jouets et doudous.
Ouvrez les fenêtres de la pièce où il dort au moins 10 minutes par jour pour aérer.\n
En ne fumant pas à côté des bébés et des enfants.\n
Lorsque l’on est soi-même enrhumé se couvrir la bouche lorsque l’on tousse avec son coude ou sa manche. Portez un masque lorsque l’on s’occupe de son bébé. Evitez d’embrasser son enfant sur le visage et sur les mains.")

d3.save!

d4 = Disease.new(name: "Diarrhées", symptoms: ["diarrhées"], behavior: " Le principal danger de la diarrhée c’est la déshydratation, c’est-à-dire un manque d’eau dans le corps. Le meilleur moyen d’éviter ou de traiter un déshydratation est de donner à boire à votre enfant une Solution de réhydratation orale (SRO).\n
Donnez souvent la SRO à boire à votre enfant, au début plusieurs fois par heure.\n
Si votre enfant vomit, donnez-lui la solution bien fraîche, au début toutes les 5 à 10 minutes, par petites gorgées ou même à la cuillère.\n
Ensuite, laissez votre enfant boire la SRO à volonté, selon sa soif, le temps que dure la diarrhée.\n
Si vous allaitez, poursuivez comme d’habitude et proposez de la SRO à votre enfant entre les têtées.\n
Si votre bébé prend du lait en poudre, arrêtez le lait et donnez-lui à boire de la SRO à la place. Après douze heures de SRO seule, proposez-lui à nouveau le lait habituel avec de la SRO entre les biberons.
", when_consult: "Si votre petit enfant a la diarrhée, que vous n’avez pas de SRO avec vous et vous ne pouvez pas vous en procurer rapidement, appeler rapidement votre médecin ou le 15.\n
Si votre enfant vomit, que les selles ne diminuent pas, qu’il refuse de boire et de manger, s’il a une température supérieure à 38,5°C, s’il est très fatigué, qu’il a les yeux cernés, creusés, s’il n’est pas comme d’habitude, ou s’il a du sang dans les selles rappelez rapidement votre médecin ou consultez les services d’urgences", need_know: "La SRO est disponible en pharmacie sans ordonnance.", prevention: "Généralement viral")

d4.save!

d5 = Disease.new(name: "Vomissements", symptoms: ["vomissement"], behavior: " Le principal danger des vomissements c’est la déshydratation, c’est-à-dire un manque d’eau dans le corps. Le meilleur moyen d’éviter ou de traiter une déshydratation est de donner à boire à votre enfant une Solution de réhydratation orale (SRO).\n
Donnez souvent la SRO à boire à votre enfant, au début plusieurs fois par heure.\n
Si votre enfant vomit, donnez-lui la solution bien fraîche, au début toutes les 5 à 10 minutes, par petites gorgées ou même à la cuillère.\n
Ensuite, laissez votre enfant boire la SRO à volonté, selon sa soif, le temps que dure les vomissements.\n
Si vous allaitez, poursuivez comme d’habitude et proposez de la SRO à votre enfant entre les têtées.\n
Si votre bébé prend du lait en poudre, arrêtez le lait et donnez-lui à boire de la SRO à la place. Après douze heures de SRO seule, proposez-lui à nouveau le lait habituel avec de la SRO entre les biberons.\n
Evitez toute autre composition artisanale (eau de riz, soupe de carottes, cola éventé…)\n
Notez les quantités de biberons bues. Comptabilisez les selles et les vomissements. Mesurez sa température. Pesez votre enfant ( en pharmacie par exemple).
 ", when_consult: "Consultez votre médecin traitant si votre enfant a:\n
•	Les yeux cernés, creusés
•	Un teint pâle ou grisâtre
•	Une respiration rapide
•	Une somnolence
•	Des geignements, des pleurs
•	Une sécheresse des muqueuses (bouche et langue) et cutanée (peau plissée).
•	Perte de poids importante
•	S’il continue à vomir malgré la solution que vous lui avez proposée en fractionnée", need_know: "La SRO est disponible en pharmacie sans ordonnance.", prevention: " La gastro-entérite est une infection le plus souvent virale.\n
Afin de diminuer le risque de contamination :
•	Lavage systématique des mains après chaque change, avant chaque préparation alimentaire, après chaque contact de manière générale avec un enfant malade.
•	Lavage des surfaces et du matériel en contact avec l’enfant malade (table à langer, sucettes, biberons.. ")

d5.save!

d6 = Disease.new(name: "Douleurs abdominales", symptoms: ["douleurs abdominales"], behavior: " Le principal danger des vomissements c’est la déshydratation, c’est-à-dire un manque d’eau dans le corps. Le meilleur moyen d’éviter ou de traiter une déshydratation est de donner à boire à votre enfant une Solution de réhydratation orale (SRO).\n
Donnez souvent la SRO à boire à votre enfant, au début plusieurs fois par heure.\n
Si votre enfant vomit, donnez-lui la solution bien fraîche, au début toutes les 5 à 10 minutes, par petites gorgées ou même à la cuillère.\n
Ensuite, laissez votre enfant boire la SRO à volonté, selon sa soif, le temps que dure les vomissements.\n
Si vous allaitez, poursuivez comme d’habitude et proposez de la SRO à votre enfant entre les têtées.\n
Si votre bébé prend du lait en poudre, arrêtez le lait et donnez-lui à boire de la SRO à la place. Après douze heures de SRO seule, proposez-lui à nouveau le lait habituel avec de la SRO entre les biberons.\n
Evitez toute autre composition artisanale (eau de riz, soupe de carottes, cola éventé…)\n
Notez les quantités de biberons bues. Comptabilisez les selles et les vomissements. Mesurez sa température. Pesez votre enfant ( en pharmacie par exemple).
 ", when_consult: "Consultez votre médecin traitant si votre enfant a:\n
•	Les yeux cernés, creusés
•	Un teint pâle ou grisâtre
•	Une respiration rapide
•	Une somnolence
•	Des geignements, des pleurs
•	Une sécheresse des muqueuses (bouche et langue) et cutanée (peau plissée).
•	Perte de poids importante
•	S’il continue à vomir malgré la solution que vous lui avez proposée en fractionnée", need_know: "La SRO est disponible en pharmacie sans ordonnance.", prevention: " La gastro-entérite est une infection le plus souvent virale.\n
Afin de diminuer le risque de contamination :
•	Lavage systématique des mains après chaque change, avant chaque préparation alimentaire, après chaque contact de manière générale avec un enfant malade.
•	Lavage des surfaces et du matériel en contact avec l’enfant malade (table à langer, sucettes, biberons.. ")

d6.save!

d7 = Disease.new(name: "Brulures", symptoms: ["brulures"], behavior: " Refroidissement 10 min sous l'eau froide", when_consult: "Plaie dont la taille est supérieure à 10 cm", need_know: "Ne pas appliquer de dentifrice", prevention: "Afin d'éviter les brulures liées au soleil appliquer un écran total")
d7.save!
