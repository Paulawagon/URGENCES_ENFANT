# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "csv"

Hospital.destroy_all
Analysis.destroy_all
Child.destroy_all
User.destroy_all
Disease.destroy_all

# CSV.foreach(Rails.root.join("db/hospitals.csv")) do |row|
# puts "creating #{row[0]}"
# Hospital.create(name: row[0], address: row[1])
#  end

u1 = User.new(first_name: "Paula", last_name: "Pisa", email: "paula@test.fr", password: "123456")
u1.save!

e1 = Child.new(first_name: "Lola", birth_date: Date.new(2019, 11, 10), weight: 500, cardiac: false, respiratory: false, prematurity: false)
e1.user = u1
e1.save!

a1 = Analysis.new(symptoms: ["toux"])
a1.child = e1
a1.save!

d1 = Disease.new(name: "Fièvre", symptoms: ["Fièvre"], behavior: "<p>
     Découvrez votre enfant et ne surchauffez pas la pièce (entre 18 et 20°C
    maximum).
<div>
    <p>Donnez-lui fréquemment à boire <span class = 'rose' style='background-color:#FE7988 ; color: white ; border: 1px solid #FE7988; font-weight: bolder;
    border-radius: 25px;' > +++</span> .
    </p>
</dv>
    <p>Ces mesures simples sont suffisantes dans bien des cas !</p>
    <p>Les bains tièdes et les enveloppements de linges humides ne sont plus
    recommandés.</p>
    <p>Il n’est pas nécessaire de traiter systématiquement la fièvre surtout si
    elle est bien supportée par l’enfant. Le but du traitement n’est pas de
    normaliser à tout prix la température, mais d’améliorer le confort de
    l’enfant.</p>
    <p><strong><span class = 'medoc' style='background-color: #66BBEC; color: white; border: 1px solid #66BBEC; font-weight: bolder; border-radius: 25px;'>Les médicaments: </span></strong>
    avant l’avis de votre médecin, ne donnez qu’un seul médicament contre la
    fièvre à la fois : le paracétamol (par exemple : Doliprane®, Efferalgan®, Dolko®, Dafalgan®) toutes les 6 heures si besoin.</p>
    <p><span class= 'warning' style='background-color: #FE7988; color: white; border: 1px solid #FE7988; font-weight: bolder;
    border-radius: 25px;'>Attention</span> de ne pas associer plusieurs médicaments contenant les mêmes
    molécules (ou des molécules de la même famille) comme du Doliprane® et de
    l’Efferalgan®</p><br><br><br><br>", 
when_consult: "<strong><span class = 'rose' style='background-color:#FE7988 ; color: white ; border: 1px solid #FE7988; font-weight: bolder;
    border-radius: 25px;' >Consultez aux Urgences: </span></strong>
<div list-style-type:none; margin-left: 2px;>
 <li>Si vous n'arrivez pas à réveiller votre enfant</li> 
 <li>S’il a une éruption cutanée </li> 
 <li>Une difficulté respiratoire</li> 
 <li>Une coloration bleue des lèvres ou des extrêmités</li> 
 <li>Des tremblements ou des convulsions</li> 
<li>En cas de convulsions (perte de contact, modification du tonus, mouvements anormaux des yeux ou des membres):
<span class= 'warning' style='color: #FE7988';><strong>GARDEZ votre calme:</strong></span><br>
<strong> "    "- </strong>Allongez votre enfant sur le côté afin de dégager ses voies respiratoires<br>
<strong>  - </strong>Eloignez le de tout objet susceptible de le blesser<br>
<strong>  - </strong>N'essayez pas de lui ouvrir la bouche<br>
<strong>  - </strong>Si possible notez la durée des convulsions, elles s'arrêtent généralement d'elles-mêmes en quelques minutes<br>
<strong>  - </strong>Si ce n'est pas le cas et que votre enfant ne se reveille pas complètement au delà de 10 minutes après le début des convulsions appeler le 15<br>
</div><br>
<span class = 'medoc' style='background-color: #66BBEC; color: white; border: 1px solid #66BBEC; font-weight: bolder; border-radius: 25px; '> *** </span>
Si votre enfant ne présente pas de signes inquiètants, vous pouvez consulter au bout de 48 heures votre médecin traitant ou les urgences en cas d'impossibilité .<br><br><br><br>",
need_know: " La température se mesure avec un thermomètre (au mieux en rectal, si vous prenez la température en axillaire ajoutez 0,5°C). <br><br>
La notion ‘il est chaud’ ne veut rien dire. On considère qu’un enfant a de la fièvre quand sa température dépasse 
<span class = 'rose' style='background-color:#FE7988 ; color: white ; border: 1px solid #FE7988; font-weight: bolder;border-radius: 25px; padding: 2px;'>38°C</span>.
Généralement,  ce n’est qu’au-dessus de <span class = 'rose' style='background-color:#FE7988 ; color: white ; border: 1px solid #FE7988; font-weight: bolder;
border-radius: 25px; padding: 1px;'>38,5°C</span> que l’on envisage un traitement.<br><br>
Il n’est pas nécessaire de traiter systématiquement la fièvre surtout si elle est bien supportée par l’enfant. Le but du traitement n’est pas de normaliser à tout prix la température, mais d’améliorer le confort de l’enfant. <br><br>
L’ampleur de la fièvre n’est pas corrélée à la gravité de la maladie, le comportement de l’enfant est plus révélateur (en effet, on peut observer une forte fièvre chez un enfant atteint d’une infection bénigne et ne relever aucune élévation de température chez un enfant souffrant d’une très grave infection.<br><br>
La fièvre fait partie d’un processus complexe de défense de l’organisme, c’est une réponse aux infections).<br><br>
Seuls certains enfants (souvent avec un caractère familial) ont une susceptibilité particulière et peuvent convulser, même en cas de fièvre peu élevée).<br><br>
<span class = 'medoc' style='background-color: #66BBEC; color: white; font-weight: bolder;border-radius: 25px; padding: 2px;'><strong>Ces convulsions sont généralement sans gravité, même si elles sont très impressionnantes !</strong></span><br><br><br><br>
", prevention: "<span class = 'rose' style='color:#FE7988 ; '><strong>* </strong></span> La fièvre est une réaction de défense face à un microbe, pour s'en protéger et éviter la contamination: lavez vous régulièrement les mains avec du savon ou une solution hydroalcoolique.<br><br>
<span class = 'rose' style='color:#FE7988 ; '><strong>* </strong></span> Evitez, quand cela est possible, d’emmener votre enfant malade ou ayant moins de 3 mois dans les endroits publics confinés (transports en commun, centres commerciaux, etc.).<br><br>
<span class = 'rose' style='color:#FE7988 ; '><strong>* </strong></span> Ne pas partager les biberons, sucettes ou couverts.<br><br>
<span class = 'rose' style='color:#FE7988 ; '><strong>* </strong></span> Ouvrez les fenêtres de la pièce où il dort au moins 10 minutes par jour pour aérer.<br><br>
<span class = 'rose' style='color:#FE7988 ; '><strong>* </strong></span> Lorsque l’on est soi-même enrhumé se couvrir la bouche lorsque l’on tousse avec son coude ou sa manche. Portez un masque lorsque l’on s’occupe de son bébé. Evitez d’embrasser son enfant sur le visage et sur les mains. <br><br><br><br>")

d1.save!


d2 = Disease.new(name: "Toux", symptoms: ["Toux"], behavior: " Les médicaments contre la toux ne servent à rien et <span style='text-decoration: underline; text-decoration-color: #FE7988;'> ne sont pas conseillés </span>car ils peuvent avoir des effets secondaires dangereux.<br><br>
<span class = 'rose' style='background-color:#FE7988; color: white; border: 1px solid #FE7988; font-weight: bolder; border-radius: 25px;'><strong> Ne jamais donner de miel à un enfant de moins de 1 an (risque de botulisme).</strong></span><br><br>
<span class = 'rose' style='color:#FE7988 ; '><strong>* </strong></span>Même s'il ne vous paraît pas enrhumé, nettoyer lui le nez au moins 6 fois par jour avec du sérum physiologique, en particulier avant de lui donner à boire ou à manger.<br><br>
<span class = 'rose' style='color:#FE7988 ; '><strong>* </strong></span>Lui donner régulièrement de l’eau à boire pour éviter la déshydratation.<br><br>
<span class = 'rose' style='color:#FE7988 ; '><strong>* </strong></span>Fractionnez  ses repas (lui donner à manger plus souvent et en plus petites quantités).<br><br>
<span class = 'rose' style='color:#FE7988 ; '><strong>* </strong></span>Bien aérer toutes les pièces du logement ( particulièrement la pièce où il dort).<br><br>
<span class = 'rose' style='color:#FE7988 ; '><strong>* </strong></span>Ne pas trop le couvrir.<br><br>
<span class = 'rose' style='color:#FE7988 ; '><strong>* </strong></span>Continuer à le coucher sur le dos à plat.<br><br>
<span class = 'rose' style='color:#FE7988 ; '><strong>* </strong></span>Ne jamais fumer près de lui. <br><br><br><br> ", 
when_consult: "<strong><span class = 'rose' style='background-color:#FE7988 ; color: white ; border: 1px solid #FE7988; font-weight: bolder;
    border-radius: 25px;' > Il est préférable de se rendre rapidement aux urgences : </span></strong> <br>
<span class = 'rose' style='color:#FE7988 ; '><strong>* </strong></span>En cas de suspicion d'inhalation de corps étranger.<br>
<span class = 'rose' style='color:#FE7988 ; '><strong>* </strong></span>Si votre enfant mange moins de la moitié des quantités habituelles sur la journée, ou qu'il vomit systématiquement.<br>
<span class = 'rose' style='color:#FE7988 ; '><strong>* </strong></span>Si vous n'arrivez pas à réveiller votre enfant, s'il présente une coloration bleue des lèvres ou des extrêmités ou une difficulté respiratoire : sa respiration est très rapide ou fait un bruit anormal, ses muscles du cou ou du thorax se contractent pour respirer, son thorax se creuse.<br>
<span class = 'medoc' style='background-color: #66BBEC; color: white; border: 1px solid #66BBEC; font-weight: bolder; border-radius: 25px; '> *** </span>
Si votre enfant ne présente pas de signes inquiètants, consultez votre médecin traitant ou les urgences en cas d'impossibilité", 
need_know: " La toux est une réaction de défense du système respiratoire afin d'expulser un agent infectieux ou un corps étranger. <br><br>
Il ne faut pas tenter de la stopper, même si elle est gênante.<br><br>
La bronchiolite est une cause fréquente chez l'enfant, elle débute par un simple rhume, puis la toux devient plus fréquente, la respiration peut devenir sifflante. L’enfant peut être gêné pour respirer et avoir du mal à manger. Il peut avoir de la fièvre.<br><br>
Dans la majorité des cas, la bronchiolite guérit spontanément au bout de 5 à 10 jours mais peut persister pendant 2 à 4 semaines. La bronchiololite est une maladie respiratoire très fréquente chez les enfants de moins de 2 ans.<br><br> 
Elle est due le plus souvent à un virus appelé Virus Respiratoire Syndical (VRS) qui touche les petites bronches.<br><br><br><br>",
prevention: "<span class = 'rose' style='background-color:#FE7988; color: white; border: 1px solid #FE7988; font-weight: bolder; border-radius: 25px;'><strong>La bronchiolite est une maladie très contagieuse.</strong></span><br><br>
Les adultes et les grands enfants qui sont porteurs du virus respiratoire syncytial n’ont habituellement aucun signe ou ont un simple rhume. <br><br>
Le virus se transmet facilement par la salive, la toux, et les éternuements.<br>
Il peut rester sur les mains et les objets.<br><br>
<span class = 'rose' style='color:#FE7988 ; '><strong>* </strong></span>Lavez vous régulièrement les mains avec du savon ou une solution hydroalcoolique.Lavez régulièrement jouets et doudous.</span><br>
<span class = 'rose' style='color:#FE7988 ; '><strong>* </strong></span>Evitez, quand cela est possible, d’emmener votre enfant malade ou ayant moins de 3 mois dans les endroits publics confinés (transports en commun, centres commerciaux, etc.).</span><br>
<span class = 'rose' style='color:#FE7988 ; '><strong>* </strong></span>Ne pas partager les biberons, sucettes ou couverts.</span><br>
<span class = 'rose' style='color:#FE7988 ; '><strong>* </strong></span>Ouvrez les fenêtres de la pièce où il dort au moins 10 minutes par jour pour aérer.</span><br>
<span class = 'rose' style='color:#FE7988 ; '><strong>* </strong></span> Maintenir la température de la pièce aux alentours de 19°C </span><br>
<span class = 'rose' style='color:#FE7988 ; '><strong>* </strong></span>Ne pas fumer à côté des bébés et des enfants.</span><br>
<span class = 'rose' style='color:#FE7988 ; '><strong>* </strong></span>Lorsque l’on est soi-même enrhumé se couvrir la bouche lorsque l’on tousse avec son coude ou sa manche.</span><br>
<span class = 'rose' style='color:#FE7988 ; '><strong>* </strong></span> Portez un masque lorsque l’on s’occupe de son bébé. Evitez d’embrasser son enfant sur le visage et sur les mains.</span><br>
<br><br><br>")

d2.save!

d3 = Disease.new(name: "Rhume", symptoms: ["Rhume"], behavior: " Nettoyer le nez au moins 6 fois par jour avec du sérum physiologique, en particulier avant de lui donner à boire ou à manger.<br>
Lui donner régulièrement de l’eau à boire pour éviter la déshydratation.<br>
Fractionner  ses repas (lui donner à manger plus souvent et en plus petites quantités).<br>
Bien aérer toutes les pièces du logement ( particulièrement la pièce où il dort).<br>
Continuer à le coucher sur le dos à plat.\<br>
Ne jamais fumer près de lui. ", when_consult: "Il est préférable de se rendre rapidement aux urgences : <br>
Si votre enfant boit moins de la moitié de ses biberons à trois repas consécutifs.<br>
Il vomit systématiquement.<br>
Il dort en permanence, ou au contraire, pleure de manière inhabituelle et ne peut s’endormir.<br>
Sinon consultez votre médecin traitant.",
need_know: " La bronchiolite peut débuter par un simple rhume et l’enfant tousse un peu. Puis la toux est plus fréquente, la respiration peut devenir sifflante. L’enfant peut être gêné pour respirer et avoir du mal à manger et à dormir. Il peut avoir de la fièvre.<br>
Dans la majorité des cas, la bronchiolite guérit spontanément au bout de 5 à 10 jour mais peut persister pendant 2 à 4 semaines.La bronchiololite est une maladie respiratoire très fréquentes chez les nourrissons et les enfants de moins de 2 ans. Elle est due le plus souvent à un virus appelé Virus Respiratoire Syndical (VRS) qui touche les petites bronches.\n
Les épidémies de bronchiolite débutent généralement au cours du mois d’octobre et se terminent courant janvier.", 
prevention: "La bronchiolite est une maladie très contagieuse.<br>
Les adultes et les grands enfants qui sont porteurs du virus respiratoire syncytial n’ont habituellement aucun signe ou ont un simple rhume. Le virus se transmet facilement par la salive, la toux, et les éternuements.<br>
Le virus peut rester sur les mains et les objets (comme sur les jouets, les tétines, les « doudous ».<br>
Se laver les mains pendant 30 secondes avec de l’eau et du savon avant et après un change, une tétée, câlins, biberon, repas, etc. ou en utilisant une solution hydroalcoolique.<br>
Evitez, quand cela est possible, d’emmener son enfant dans les endroits publics confinés (transports en commun, centres commerciaux, etc.) où il risquerait d’être en contact avec des personnes enrhumées.<br>
Ne pas partager les biberons, sucettes ou couverts non lavés<br>
Lavez régulièrement jouets et doudous.
Ouvrez les fenêtres de la pièce où il dort au moins 10 minutes par jour pour aérer.<br>
En ne fumant pas à côté des bébés et des enfants.<br>
Lorsque l’on est soi-même enrhumé se couvrir la bouche lorsque l’on tousse avec son coude ou sa manche. Portez un masque lorsque l’on s’occupe de son bébé. Evitez d’embrasser son enfant sur le visage et sur les mains.<br><br><br>")

d3.save!

d4 = Disease.new(name: "Diarrhées", symptoms: ["Diarrhées"], behavior: " Le principal danger de la diarrhée c’est la déshydratation, c’est-à-dire un manque d’eau dans le corps. Le meilleur moyen d’éviter ou de traiter un déshydratation est de donner à boire à votre enfant une Solution de réhydratation orale (SRO).<br>
Donnez souvent la SRO à boire à votre enfant, au début plusieurs fois par heure.<br>
Si votre enfant vomit, donnez-lui la solution bien fraîche, au début toutes les 5 à 10 minutes, par petites gorgées ou même à la cuillère.<br>
Ensuite, laissez votre enfant boire la SRO à volonté, selon sa soif, le temps que dure la diarrhée.<br>
Si vous allaitez, poursuivez comme d’habitude et proposez de la SRO à votre enfant entre les têtées.<br>
Si votre bébé prend du lait en poudre, arrêtez le lait et donnez-lui à boire de la SRO à la place. Après douze heures de SRO seule, proposez-lui à nouveau le lait habituel avec de la SRO entre les biberons.
", when_consult: "Si votre petit enfant a la diarrhée, que vous n’avez pas de SRO avec vous et vous ne pouvez pas vous en procurer rapidement, appeler rapidement votre médecin ou le 15.<br>
Si votre enfant vomit, que les selles ne diminuent pas, qu’il refuse de boire et de manger, s’il a une température supérieure à 38,5°C, s’il est très fatigué, qu’il a les yeux cernés, creusés, s’il n’est pas comme d’habitude, ou s’il a du sang dans les selles rappelez rapidement votre médecin ou consultez les services d’urgences", need_know: "La SRO est disponible en pharmacie sans ordonnance.", prevention: "Généralement viral")

d4.save!

d5 = Disease.new(name: "Vomissements", symptoms: ["Vomissements"], behavior: " Le principal danger des vomissements c’est la déshydratation, c’est-à-dire un manque d’eau dans le corps. Le meilleur moyen d’éviter ou de traiter une déshydratation est de donner à boire à votre enfant une Solution de réhydratation orale (SRO).\n
Donnez souvent la SRO à boire à votre enfant, au début plusieurs fois par heure.<br>
Si votre enfant vomit, donnez-lui la solution bien fraîche, au début toutes les 5 à 10 minutes, par petites gorgées ou même à la cuillère.<br>
Ensuite, laissez votre enfant boire la SRO à volonté, selon sa soif, le temps que dure les vomissements.<br>
Si vous allaitez, poursuivez comme d’habitude et proposez de la SRO à votre enfant entre les têtées.<br>
Si votre bébé prend du lait en poudre, arrêtez le lait et donnez-lui à boire de la SRO à la place. Après douze heures de SRO seule, proposez-lui à nouveau le lait habituel avec de la SRO entre les biberons.<br>
Evitez toute autre composition artisanale (eau de riz, soupe de carottes, cola éventé…)<br>
Notez les quantités de biberons bues. Comptabilisez les selles et les vomissements. Mesurez sa température. Pesez votre enfant ( en pharmacie par exemple).
 ", when_consult: "Consultez votre médecin traitant si votre enfant a:<br>
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

d6 = Disease.new(name: "Douleurs abdominales", symptoms: ["Douleurs abdominales"], behavior: " Le principal danger des vomissements c’est la déshydratation, c’est-à-dire un manque d’eau dans le corps. Le meilleur moyen d’éviter ou de traiter une déshydratation est de donner à boire à votre enfant une Solution de réhydratation orale (SRO).\n
Donnez souvent la SRO à boire à votre enfant, au début plusieurs fois par heure.\n
Si votre enfant vomit, donnez-lui la solution bien fraîche, au début toutes les 5 à 10 minutes, par petites gorgées ou même à la cuillère.\n
Ensuite, laissez votre enfant boire la SRO à volonté, selon sa soif, le temps que dure les vomissements.\n
Si vous allaitez, poursuivez comme d’habitude et proposez de la SRO à votre enfant entre les têtées.\n
Si votre bébé prend du lait en poudre, arrêtez le lait et donnez-lui à boire de la SRO à la place. Après douze heures de SRO seule, proposez-lui à nouveau le lait habituel avec de la SRO entre les biberons.\n
Evitez toute autre composition artisanale (eau de riz, soupe de carottes, cola éventé…)\n
Notez les quantités de biberons bues. Comptabilisez les selles et les vomissements. Mesurez sa température. Pesez votre enfant ( en pharmacie par exemple).
 ", when_consult: "Consultez votre médecin traitant si votre enfant a:\n
Les yeux cernés, creusés
Un teint pâle ou grisâtre
Une respiration rapide
Une somnolence
Des geignements, des pleurs
Une sécheresse des muqueuses (bouche et langue) et cutanée (peau plissée).
Perte de poids importante
S’il continue à vomir malgré la solution que vous lui avez proposée en fractionnée", need_know: "La SRO est disponible en pharmacie sans ordonnance.", prevention: " La gastro-entérite est une infection le plus souvent virale.\n
Afin de diminuer le risque de contamination :
Lavage systématique des mains après chaque change, avant chaque préparation alimentaire, après chaque contact de manière générale avec un enfant malade.
Lavage des surfaces et du matériel en contact avec l’enfant malade (table à langer, sucettes, biberons.. ")

d6.save!

d7 = Disease.new(name: "Brûlures", symptoms: ["Brûlures"], behavior: "Si votre enfant se brûle, ne paniquez pas. Refroidisser la brûlure à l’eau froide (15°C environ) pendant 15 min", when_consult: "Plaie dont la taille est supérieure à 10 cm", need_know: "Ne pas appliquer de dentifrice", prevention: "Afin d'éviter les brulures liées au soleil appliquer un écran total")
d7.save!
 