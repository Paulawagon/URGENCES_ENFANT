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


CSV.foreach(Rails.root.join("db/hospitals.csv")) do |row|
  puts "creating #{row[0]}"
  Hospital.create(name: row[0], address: row[1])
end


u1 = User.new(first_name: "Paula", last_name: "Pisa", email: "paula@test.fr", password: "123456")
u1.save!

e1 = Child.new(first_name: "Lola", birth_date: Date.new(2019, 11, 10), weight: 12, cardiac: false, respiratory: false, prematurity: false)
e1.user = u1
e1.save!

a1 = Analysis.new(symptoms: ["toux"])
a1.child = e1
a1.save!

d1 = Disease.new(name: "Fièvre", symptoms: ["Fièvre"], behavior: "<br><p>
     Découvrez votre enfant et ne surchauffez pas la pièce (entre 18 et 20°C
    maximum).
<div>
    <p>Donnez-lui fréquemment à boire <span class = 'rose' style='background-color:#FE7988 ; color: white ; border: 1px solid #FE7988; font-weight: bolder;
    border-radius: 5px;' > +++</span> .
    </p>
</dv>
    <p>Ces mesures simples sont suffisantes dans bien des cas !</p>
    <p>Les bains tièdes et les enveloppements de linges humides ne sont plus
    recommandés.</p>
    <p>Il n’est pas nécessaire de traiter systématiquement la fièvre surtout si
    elle est bien supportée par l’enfant. Le but du traitement n’est pas de
    normaliser à tout prix la température, mais d’améliorer le confort de
    l’enfant.</p>
    <p><strong><span class = 'medoc' style='background-color: #66BBEC; color: white; border: 1px solid #66BBEC; font-weight: bolder; border-radius: 5px;'>Les médicaments: </span></strong>
    avant l’avis de votre médecin, ne donnez qu’un seul médicament contre la
    fièvre à la fois : le paracétamol (par exemple : Doliprane®, Efferalgan®, Dolko®, Dafalgan®) toutes les 6 heures si besoin.</p>
    <p><span class= 'warning' style='background-color: #FE7988; color: white; border: 1px solid #FE7988; font-weight: bolder;
    border-radius: 5px;'>Attention</span> de ne pas associer plusieurs médicaments contenant les mêmes
    molécules (ou des molécules de la même famille) comme du Doliprane® et de
    l’Efferalgan®</p><br><br><br><br>",
    when_consult: "<br><strong><span class = 'rose' style='background-color:#FE7988 ; color: white ; border: 1px solid #FE7988; font-weight: bolder;
    border-radius: 5px;' >Consultez aux Urgences: </span></strong>
<div list-style-type:none; margin-left: 2px;>
 <li>Si vous n'arrivez pas à réveiller votre enfant</li> 
 <li>S’il a une éruption cutanée </li> 
 <li>Une difficulté respiratoire</li> 
 <li>Une coloration bleue des lèvres ou des extrêmités</li> 
 <li>Des tremblements ou des convulsions</li> 
<li>En cas de convulsions (perte de contact, modification du tonus, mouvements anormaux des yeux ou des membres):
<span class= 'warning' style='color: #FE7988';><strong>GARDEZ votre calme:</strong></span><br>
<strong> " "- </strong>Allongez votre enfant sur le côté afin de dégager ses voies respiratoires<br>
<strong>  - </strong>Eloignez le de tout objet susceptible de le blesser<br>
<strong>  - </strong>N'essayez pas de lui ouvrir la bouche<br>
<strong>  - </strong>Si possible notez la durée des convulsions, elles s'arrêtent généralement d'elles-mêmes en quelques minutes<br>
<strong>  - </strong>Si ce n'est pas le cas et que votre enfant ne se reveille pas complètement au delà de 10 minutes après le début des convulsions appeler le 15<br>
</div><br>
<span class = 'medoc' style='background-color: #66BBEC; color: white; border: 1px solid #66BBEC; font-weight: bolder; border-radius: 5px; '> *** </span>
Si votre enfant ne présente pas de signes inquiètants, vous pouvez consulter au bout de 48 heures votre médecin traitant ou les urgences en cas d'impossibilité .<br><br><br><br>",
                 need_know: " <br>La température se mesure avec un thermomètre (au mieux en rectal, si vous prenez la température en axillaire ajoutez 0,5°C). <br><br>
La notion ‘il est chaud’ ne veut rien dire. On considère qu’un enfant a de la fièvre quand sa température dépasse 
<span class = 'rose' style='background-color:#FE7988 ; color: white ; border: 1px solid #FE7988; font-weight: bolder;border-radius: 5px; padding: 2px;'>38°C</span>.
Généralement,  ce n’est qu’au-dessus de <span class = 'rose' style='background-color:#FE7988 ; color: white ; border: 1px solid #FE7988; font-weight: bolder;
border-radius: 5px; padding: 1px;'>38,5°C</span> que l’on envisage un traitement.<br><br>
Il n’est pas nécessaire de traiter systématiquement la fièvre surtout si elle est bien supportée par l’enfant. Le but du traitement n’est pas de normaliser à tout prix la température, mais d’améliorer le confort de l’enfant. <br><br>
L’ampleur de la fièvre n’est pas corrélée à la gravité de la maladie, le comportement de l’enfant est plus révélateur (en effet, on peut observer une forte fièvre chez un enfant atteint d’une infection bénigne et ne relever aucune élévation de température chez un enfant souffrant d’une très grave infection.)<br><br>
La fièvre fait partie d’un processus complexe de défense de l’organisme, c’est une réponse aux infections.<br><br>
Seuls certains enfants (souvent avec un caractère familial) ont une susceptibilité particulière et peuvent convulser, même en cas de fièvre peu élevée).<br><br>
<span class = 'medoc' style='background-color: #66BBEC; color: white; font-weight: bolder;border-radius: 5px; padding: 2px;'><strong>Ces convulsions sont généralement sans gravité, même si elles sont très impressionnantes !</strong></span><br><br><br><br>
", prevention: "<br><span class = 'rose' style='color:#FE7988 ; '><strong>* </strong></span> La fièvre est une réaction de défense face à un microbe, pour s'en protéger et éviter la contamination: lavez vous régulièrement les mains avec du savon ou une solution hydroalcoolique.<br><br>
<span class = 'rose' style='color:#FE7988 ; '><strong>* </strong></span> Evitez, quand cela est possible, d’emmener votre enfant malade ou ayant moins de 3 mois dans les endroits publics confinés (transports en commun, centres commerciaux, etc.).<br><br>
<span class = 'rose' style='color:#FE7988 ; '><strong>* </strong></span> Ne pas partager les biberons, sucettes ou couverts.<br><br>
<span class = 'rose' style='color:#FE7988 ; '><strong>* </strong></span> Ouvrez les fenêtres de la pièce où il dort au moins 10 minutes par jour pour aérer.<br><br>
<span class = 'rose' style='color:#FE7988 ; '><strong>* </strong></span> Lorsque l’on est soi-même enrhumé se couvrir la bouche lorsque l’on tousse avec son coude ou sa manche. Portez un masque lorsque l’on s’occupe de son bébé. Evitez d’embrasser son enfant sur le visage et sur les mains. <br><br><br><br>")

d1.save!

d2 = Disease.new(name: "Toux", symptoms: ["Toux"], behavior: " Les médicaments contre la toux ne servent à rien et <span style='text-decoration: underline; text-decoration-color: #FE7988;'> ne sont pas conseillés </span>car ils peuvent avoir des effets secondaires dangereux.<br><br>
<span class = 'rose' style='background-color:#FE7988; color: white; border: 1px solid #FE7988; font-weight: bolder; border-radius: 5px;'><strong> Ne jamais donner de miel à un enfant de moins de 1 an (risque de botulisme).</strong></span><br><br>
<span class = 'rose' style='color:#FE7988 ; '><strong>* </strong></span>Même s'il ne vous paraît pas enrhumé, nettoyer lui le nez au moins 6 fois par jour avec du sérum physiologique, en particulier avant de lui donner à boire ou à manger.<br><br>
<span class = 'rose' style='color:#FE7988 ; '><strong>* </strong></span>Lui donner régulièrement de l’eau à boire pour éviter la déshydratation.<br><br>
<span class = 'rose' style='color:#FE7988 ; '><strong>* </strong></span>Fractionnez  ses repas (lui donner à manger plus souvent et en plus petites quantités).<br><br>
<span class = 'rose' style='color:#FE7988 ; '><strong>* </strong></span>Bien aérer toutes les pièces du logement ( particulièrement la pièce où il dort).<br><br>
<span class = 'rose' style='color:#FE7988 ; '><strong>* </strong></span>Ne pas trop le couvrir.<br><br>
<span class = 'rose' style='color:#FE7988 ; '><strong>* </strong></span>Continuer à le coucher sur le dos à plat.<br><br>
<span class = 'rose' style='color:#FE7988 ; '><strong>* </strong></span>Ne jamais fumer près de lui. <br><br><br><br> ", 
when_consult: "<br><strong><span class = 'rose' style='background-color:#FE7988 ; color: white ; border: 1px solid #FE7988; font-weight: bolder;
border-radius: 5px;' >Il est préférable de se rendre rapidement aux urgences : </span></strong> <br>
    <div list-style-type:none; margin-left: 2px;>
<li>En cas de suspicion d'inhalation de corps étranger.</li><br>
<li>Si votre enfant mange moins de la moitié des quantités habituelles sur la journée, ou qu'il vomit systématiquement.</li><br>
<li>Si vous n'arrivez pas à réveiller votre enfant, s'il présente une coloration bleue des lèvres ou des extrêmités ou une difficulté respiratoire : sa respiration est très rapide ou fait un bruit anormal, ses muscles du cou ou du thorax se contractent pour respirer, son thorax se creuse.</li><br>
</div>
<span class = 'medoc' style='background-color: #66BBEC; color: white; border: 1px solid #66BBEC; font-weight: bolder; border-radius: 5px; '> *** </span>
Si votre enfant ne présente pas de signes inquiètants, consultez votre médecin traitant ou les urgences en cas d'impossibilité.", 
need_know: " La toux est une réaction de défense du système respiratoire afin d'expulser un agent infectieux ou un corps étranger. <br><br>
Il ne faut pas tenter de la stopper, même si elle est gênante.<br><br>
La bronchiolite est une cause fréquente de toux chez l'enfant de moins de 2 ans, elle débute par un simple rhume, puis la toux devient plus fréquente, la respiration peut devenir sifflante. L’enfant peut être gêné pour respirer et avoir du mal à manger. Il peut avoir de la fièvre.<br><br>
Dans la majorité des cas, la bronchiolite guérit spontanément au bout de 5 à 10 jours mais peut persister pendant 2 à 4 semaines. C'est une maladie respiratoire très fréquente chez les enfants de moins de 2 ans.<br><br> 
Elle est due le plus souvent à un virus appelé Virus Respiratoire Syndical (VRS) qui touche les petites bronches.<br>
<span style='text-decoration: underline; text-decoration-color: #FE7988;'>La kinésithérapie respiratoire n’est plus systématiquement recommandée</span>. <br><br><br><br>",
prevention: "<span class = 'rose' style='background-color:#FE7988; color: white; border: 1px solid #FE7988; font-weight: bolder; border-radius: 5px;'><strong>La bronchiolite est une maladie très contagieuse.</strong></span><br><br>
Les adultes et les grands enfants qui sont porteurs du virus respiratoire syncytial n’ont habituellement aucun signe ou ont un simple rhume. <br><br>
Le virus se transmet facilement par la salive, la toux, et les éternuements.<br>
Il peut rester sur les mains et les objets.<br><br>
<span class = 'rose' style='color:#FE7988 ; '><strong>* </strong></span>Lavez vous régulièrement les mains avec du savon ou une solution hydroalcoolique. Lavez régulièrement jouets et doudous.</span><br>
<span class = 'rose' style='color:#FE7988 ; '><strong>* </strong></span>Evitez, quand cela est possible, d’emmener votre enfant malade ou ayant moins de 3 mois dans les endroits publics confinés (transports en commun, centres commerciaux, etc.).</span><br>
<span class = 'rose' style='color:#FE7988 ; '><strong>* </strong></span>Ne pas partager les biberons, sucettes ou couverts.</span><br>
<span class = 'rose' style='color:#FE7988 ; '><strong>* </strong></span>Ouvrez les fenêtres de la pièce où il dort au moins 10 minutes par jour pour aérer.</span><br>
<span class = 'rose' style='color:#FE7988 ; '><strong>* </strong></span> Maintenir la température de la pièce aux alentours de 19°C. </span><br>
<span class = 'rose' style='color:#FE7988 ; '><strong>* </strong></span>Ne pas fumer à côté des bébés et des enfants.</span><br>
<span class = 'rose' style='color:#FE7988 ; '><strong>* </strong></span>Lorsque l’on est soi-même enrhumé se couvrir la bouche lorsque l’on tousse avec son coude ou sa manche.</span><br>
<span class = 'rose' style='color:#FE7988 ; '><strong>* </strong></span> Portez un masque lorsque l’on s’occupe de son bébé. Evitez d’embrasser son enfant sur le visage et sur les mains.</span><br>
<br><br><br>")

d2.save!

d3 = Disease.new(name: "Rhume", symptoms: ["Rhume"], behavior: " Nettoyer le nez au moins 6 fois par jour avec du sérum physiologique, en particulier avant de lui donner à boire ou à manger.<br><br>
Lui donner régulièrement de l’eau à boire pour éviter la déshydratation.<br><br>
Fractionner  ses repas (lui donner à manger plus souvent et en plus petites quantités).<br><br>
Bien aérer toutes les pièces du logement ( particulièrement la pièce où il dort).<br><br>
Continuer à le coucher sur le dos à plat.\<br><br>
Ne jamais fumer près de lui. ", when_consult: "<strong><span class = 'rose' style='background-color:#FE7988 ; color: white ; border: 1px solid #FE7988; font-weight: bolder;
    border-radius: 5px;' >Il est préférable de se rendre rapidement aux urgences : </span></strong><br>
  <div list-style-type:none; margin-left: 2px;>
<li>Si votre enfant boit moins de la moitié de ses biberons à trois repas consécutifs.</li>
<li>Il vomit systématiquement.</li>
<li>Il dort en permanence, ou au contraire, pleure de manière inhabituelle et ne peut s’endormir.</li>
</div><br><br>
Sinon consultez votre médecin traitant.",
need_know: " La bronchiolite peut débuter par un simple rhume et l’enfant tousse un peu. <br>
Puis la toux est plus fréquente, la respiration peut devenir sifflante.<br>
L’enfant peut être gêné pour respirer et avoir du mal à manger et à dormir.<br>
Il peut avoir de la fièvre.<br><br>
Dans la majorité des cas, la bronchiolite guérit spontanément au bout de 5 à 10 jour mais peut persister pendant 2 à 4 semaines.<br>
<br>La bronchiololite est une maladie respiratoire très fréquentes chez les nourrissons et les enfants de moins de 2 ans. Elle est due le plus souvent à un virus appelé Virus Respiratoire Syndical (VRS) qui touche les petites bronches.",
prevention: "Les virus responsables des rhumes et des bronchiolites sont très contagieux.<br>
Le risque pour les jeunes enfants est la bronchiolite.Elle est due le plus souvent à un virus appelé Virus Respiratoire Syncytial (VRS) qui touche les petites bronches.<br>
Les adultes et les grands enfants qui sont porteurs du virus respiratoire syncytial n’ont habituellement aucun signe ou ont un simple rhume. <br><br>
Le virus se transmet facilement par la salive, la toux, et les éternuements.<br>
Le virus peut rester sur les mains et les objets (comme sur les jouets, les tétines, les « doudous »).<br><br>
<span class = 'rose' style='color:#FE7988 ; '><strong>* </strong></span>Se laver les mains pendant 30 secondes avec de l’eau et du savon avant et après un change, une tétée, câlins, biberon, repas, etc. ou en utilisant une solution hydroalcoolique.<br>
<span class = 'rose' style='color:#FE7988 ; '><strong>* </strong></span>Evitez, quand cela est possible, d’emmener son enfant dans les endroits publics confinés (transports en commun, centres commerciaux, etc.) où il risquerait d’être en contact avec des personnes enrhumées.<br>
<span class = 'rose' style='color:#FE7988 ; '><strong>* </strong></span>Ne pas partager les biberons, sucettes ou couverts non lavés<br>
<span class = 'rose' style='color:#FE7988 ; '><strong>* </strong></span>Lavez régulièrement jouets et doudous.<br>
<span class = 'rose' style='color:#FE7988 ; '><strong>* </strong></span>Ouvrez les fenêtres de la pièce où il dort au moins 10 minutes par jour pour aérer.<br>
<span class = 'rose' style='color:#FE7988 ; '><strong>* </strong></span>En ne fumant pas à côté des bébés et des enfants.<br>
<span class = 'rose' style='color:#FE7988 ; '><strong>* </strong></span>Lorsque l’on est soi-même enrhumé se couvrir la bouche lorsque l’on tousse avec son coude ou sa manche. Portez un masque lorsque l’on s’occupe de son bébé.<br>
<span class = 'rose' style='color:#FE7988 ; '><strong>* </strong></span>Evitez d’embrasser son enfant sur le visage et sur les mains.<br><br><br>")

d3.save!

d4 = Disease.new(name: "Diarrhées", symptoms: ["Diarrhées"], behavior: " Le principal danger de la diarrhée c’est la déshydratation, c’est-à-dire un manque d’eau dans le corps.<br>
Le meilleur moyen d’éviter ou de traiter un déshydratation est de donner à boire à votre enfant une <span class = 'rose' style='color:#FE7988 ; '>Solution de réhydratation orale (SRO)</span>.<br>
Ce soluté est disponible en pharmacie sans ordonnance. <br>
Il se présente sous forme de sachets à diluer dans 200ml d’eau. Une fois reconstituée la solution peut se conserver 24h au frigo. <br>
Proposez fréquemment la SRO à boire à votre enfant, au début plusieurs fois par heure.<br>
Si votre enfant vomit, donnez-lui la solution bien fraîche, au début toutes les 5 à 10 minutes, par petites gorgées ou même à la cuillère.<br><br>
Certains enfants plus grands n’aiment pas le goût du SRO, vous pouvez leur proposer à la place du jus de pomme avec les mêmes modalités. <br><br>
Ensuite, laissez votre enfant boire la SRO à volonté, selon sa soif, le temps que dure la diarrhée.<br><br>
Si vous allaitez, poursuivez comme d’habitude et proposez de la SRO à votre enfant entre les têtées.<br>
<span class = 'rose' style='color:#FE7988 ; '>Si votre bébé prend du lait en poudre, arrêtez le lait et donnez-lui à boire de la SRO à la place.</span><br>
Après douze heures de SRO seule, proposez-lui à nouveau le lait habituel avec de la SRO entre les biberons.<br><br><br><br>
", when_consult: "<br>Si votre petit enfant a la diarrhée, que vous n’avez pas de SRO avec vous et vous ne pouvez pas vous en procurer rapidement, appeler rapidement votre médecin ou le 15.<br><br>
 <strong><span class = 'rose' style='background-color:#FE7988 ; color: white ; border: 1px solid #FE7988; font-weight: bolder;
    border-radius: 5px;' >Rappelez rapidement votre médecin ou consultez les services d’urgences</span><br>
     <div list-style-type:none; margin-left: 2px;>
 <li>Si votre enfant vomit</li>
 <li>Ses selles ne diminuent pas</li>
 <li> Votre enfant refuse de boire et de manger</li>
 <li>Sa température est supérieure à 38,5°C</li>
 <li>Votre enfant est très fatigué</li>
 <li>Il a les yeux cernés creusés</li> 
 <li>Il n’est pas comme d’habitude</li>
  <li>Il a du sang dans les selles</li><br><br>
  </div>
<strong><span class = 'medoc' style='background-color: #66BBEC; color: white; border: 1px solid #66BBEC; font-weight: bolder; border-radius: 5px;'>+++</span></strong>Si votre enfant ne présente pas de signes inquiétants, vous pouvez consulter au bout de 48 heures votre médecin traitant ou les urgences en cas d'impossibilité.",
need_know: "<br>La gastro-entérite aigue est une cause fréquente de diarrhées et de vomissements chez l’enfant. <br>
Son origine est généralement virale.<br>
On peut attraper le virus par contact avec les selles, la salive ou les vomissements d’une personne contaminée.<br><br>
<strong><span class = 'medoc' style='background-color: #66BBEC; color: white; border: 1px solid #66BBEC; font-weight: bolder; border-radius: 5px;'>+++</span></strong>Le saviez-vous ? Un vaccin existe contre le principal virus responsable : le rotavirus. Parlez-en à votre médecin traitant !<br>
.", prevention: "Pour éviter de tomber malade ou que votre enfant transmette son microbe aux autres, des mesures simples existent : <br>
<div list-style-type:none; margin-left: 2px;>
<li>Lavage régulier des mains avec du savon ou une solution hydroalcoolique, surtout après s’être mouché, avoir toussé, être allé aux toilettes ou après avoir changé son bébé, après avoir pris les transports en commun, avant de préparer les repas etc...</li>
<li>Ne pas partager les biberons, sucettes, bouteilles d’eau ou couverts.</li>
<li> Lavez régulièrement jouets et doudous.</li><br>
<li>Eviter, quand cela est possible, d’emmener votre enfant malade ou ayant moins de 3 mois dans les endroits publics confinés (transports en commun, centres commerciaux, etc…)</li><br>
<strong><span class = 'rose' style='background-color:#FE7988 ; color: white ; border: 1px solid #FE7988; font-weight: bolder;
    border-radius: 5px;' >RAPPEL: </span></strong>Un vaccin existe contre le principal virus responsable : le rotavirus.<br><br>")

d4.save!

d5 = Disease.new(name: "Vomissements", symptoms: ["Vomissements"], behavior: "<br>Le principal danger des vomissements c’est la déshydratation, c’est-à-dire un manque d’eau dans le corps. <br>
Le meilleur moyen d’éviter ou de traiter une déshydratation est de donner à boire à votre enfant une  <span class = 'rose' style='color:#FE7988 ; '>Solution de réhydratation orale (SRO)</span>.<br>
<span class = 'rose' style='color:#FE7988 ; '><strong>* </strong></span>Donnez souvent la SRO à boire à votre enfant, au début plusieurs fois par heure.</strong></span><br>
<span class = 'rose' style='color:#FE7988 ; '><strong>* </strong></span>Donnez-lui la solution bien fraîche, au début toutes les 5 à 10 minutes, par petites gorgées ou même à la cuillère.</strong></span><br>
<span class = 'rose' style='color:#FE7988 ; '><strong>* </strong></span>Ensuite, laissez votre enfant boire la SRO à volonté, selon sa soif, le temps que dure les vomissements</strong></span><br>
<span class = 'rose' style='color:#FE7988 ; '><strong>* </strong></span>Certains enfants plus grands n’aiment pas le goût du SRO, vous pouvez leur proposer à la place du jus de pomme<br>
<span class = 'rose' style='color:#FE7988 ; '><strong>* </strong></span>Si vous allaitez, poursuivez comme d’habitude et proposez de la SRO à votre enfant entre les têtées</strong></span><br>
<span class = 'rose' style='color:#FE7988 ; '><strong>* </strong></span>Si votre bébé prend du lait en poudre, <span class = 'rose' style='color:#FE7988 ; '>arrêtez le lait</span> et donnez-lui à boire de la SRO à la place</strong></span>.<br>
<span class = 'rose' style='color:#FE7988 ; '><strong>* </strong></span> Après douze heures de SRO seule, proposez-lui à nouveau le lait habituel avec de la SRO entre les biberons.</strong></span><br>
<span class = 'rose' style='color:#FE7988 ; '><strong>* </strong></span>Evitez toute autre composition artisanale (eau de riz, soupe de carottes, cola éventé…)<br>
<span class = 'rose' style='color:#FE7988 ; '><strong>* </strong></span>Notez les quantités de biberons bues</strong></span><br>
<span class = 'rose' style='color:#FE7988 ; '><strong>* </strong></span>Comptabilisez les selles et les vomissements</strong></span><br>
<span class = 'rose' style='color:#FE7988 ; '><strong>* </strong></span> Mesurez sa température</strong></span> <br>
<span class = 'rose' style='color:#FE7988 ; '><strong>* </strong></span>Pesez votre enfant ( en pharmacie par exemple)</strong></span><br><br>
 ", when_consult: "<br> <strong><span class = 'rose' style='background-color:#FE7988 ; color: white ; border: 1px solid #FE7988; font-weight: bolder;
    border-radius: 5px;' >Consultez votre médecin traitant ou les urgences en cas d'impossibilité si votre enfant a: </strong></span><br><br>
<span class = 'rose' style='color:#FE7988 ; '><strong>* </strong></span>Les yeux cernés, creusés<br>
<span class = 'rose' style='color:#FE7988 ; '><strong>* </strong></span>Un teint pâle ou grisâtre<br>
<span class = 'rose' style='color:#FE7988 ; '><strong>* </strong></span>Une respiration rapide<br>
<span class = 'rose' style='color:#FE7988 ; '><strong>* </strong></span>Une somnolence<br>
<span class = 'rose' style='color:#FE7988 ; '><strong>* </strong></span>Des geignements, des pleurs<br>
<span class = 'rose' style='color:#FE7988 ; '><strong>* </strong></span>Une sécheresse des muqueuses (bouche et langue)<br>
<span class = 'rose' style='color:#FE7988 ; '><strong>* </strong></span>Une sécheresse cutanée (peau plissée)<br>
<span class = 'rose' style='color:#FE7988 ; '><strong>* </strong></span>Perte de poids importante<br>
<span class = 'rose' style='color:#FE7988 ; '><strong>* </strong></span>S’il continue à vomir malgré la solution que vous lui avez proposée en fractionnée",
need_know: "<br><strong><span class = 'medoc' style='background-color: #66BBEC; color: white; border: 1px solid #66BBEC; font-weight: bolder; border-radius: 5px;'>+++</span></strong> La SRO est disponible en pharmacie sans ordonnance.<br>
La gastro-entérite aigue est une cause fréquente de diarrhées et de vomissements chez l’enfant.<br>
Son origine est généralement virale. <br>
On peut attraper le virus par contact avec les selles, la salive ou les vomissements d’une personne contaminée.<br><br>
<strong><span class = 'medoc' style='background-color: #66BBEC; color: white; border: 1px solid #66BBEC; font-weight: bolder; border-radius: 5px;'>+++</span></strong>Le saviez-vous ? Un vaccin existe contre le principal virus responsable : le rotavirus. Parlez-en à votre médecin traitant !<br>",
prevention: " La gastro-entérite est une infection le plus souvent virale.<br><br>
Afin de diminuer le risque de contamination :<br>
<span class = 'rose' style='color:#FE7988 ; '><strong>* </strong></span>Lavage systématique des mains après chaque change, avant chaque préparation alimentaire, après chaque contact de manière générale avec un enfant malade.<br>
<span class = 'rose' style='color:#FE7988 ; '><strong>* </strong></span>Lavage des surfaces et du matériel en contact avec l’enfant malade (table à langer, sucettes, biberons.. <br><br>
<strong><span class = 'medoc' style='background-color: #66BBEC; color: white; border: 1px solid #66BBEC; font-weight: bolder; border-radius: 5px;'>+++</span></strong>Le saviez-vous ? Un vaccin existe contre le principal virus responsable : le rotavirus. Parlez-en à votre médecin traitant !<br><br><br>")

d5.save!

d6 = Disease.new(name: "Douleurs abdominales", symptoms: ["Douleurs abdominales"],
                 behavior: "<br>
 <p><strong><span class = 'medoc' style='background-color: #66BBEC; color: white; border: 1px solid #66BBEC; font-weight: bolder; border-radius: 5px;'>Les médicaments:</span></strong>
    Avant l’avis de votre médecin, ne donnez qu’un seul médicament à la fois contre les douleurs abdominales: le paracétamol (par exemple : Doliprane®, Efferalgan®, Dolko®, Dafalgan®) toutes les 6 heures si besoin.</p>
    <p><span class= 'warning' style='background-color: #FE7988; color: white; border: 1px solid #FE7988; font-weight: bolder;
    border-radius: 5px;'> Attention</span> de ne pas associer plusieurs médicaments contenant les mêmes
    molécules (ou des molécules de la même famille) comme du Doliprane® et de
    l’Efferalgan®</p><br><br>
 ", when_consult: "<br><span class = 'rose' style='color:#FE7988 ; '><strong>* </strong></span>Si votre enfant à des douleurs abdominales intenses non calmées par les médicaments.<br>
 <span class = 'rose' style='color:#FE7988 ; '><strong>* </strong></span>Si vous n'arrivez pas à bien réveiller votre enfant ou à l’alimenter (il mange ou boit moins de la moitié de ses quantités habituelles sur la journée) <br>
 <span class = 'rose' style='color:#FE7988 ; '><strong>* </strong></span>S’il a une éruption cutanée qui ne s’efface pas quand vous appuyez dessus<br>
  <span class = 'rose' style='color:#FE7988 ; '><strong>* </strong></span>S’il présente une coloration bleue des lèvres ou des extrémités<br>
   <span class = 'rose' style='color:#FE7988 ; '><strong>* </strong></span>S'il présente  des tremblements, des convulsions<br>
    <span class = 'rose' style='color:#FE7988 ; '><strong>* </strong></span>une difficulté respiratoire (sa respiration est très rapide ou fait un bruit anormal, ses muscles du cou ou du thorax se contractent pour respirer, son thorax se creuse, il a du mal à parler).<br>
  <span class = 'rose' style='color:#FE7988 ; '><strong>* </strong></span>S'il a du sang dans les selles<br><br>
 <strong><span class = 'medoc' style='background-color: #66BBEC; color: white; border: 1px solid #66BBEC; font-weight: bolder; border-radius: 5px;'>+++</span></strong> Si votre enfant ne présente pas de signes inquiétants, vous pouvez consulter au bout de 48 heures votre médecin traitant ou les urgences en cas d'impossibilité.<br>
", 
need_know: "<br><br>Les maux de ventre peuvent avoir différentes origines.<br>
La colique du nourrisson est une des raisons principales.<br>
En effet, les intestins, encore immatures, se contractent, provoquant spasmes et douleurs.<br>
D’autres maladies peuvent provoquer les douleurs au niveau du ventre.<br>
La gastro-entérite, par exemple, touche souvent l’enfant lors d’une épidémie.<br>
Une infection urinaire peut être aussi à l’origine de maux de ventre, tout comme une allergie alimentaire, une hernie intestinale ou encore la constipation.<br>
L’appendicite crée aussi des douleurs au niveau du ventre chez l'enfant plus grand.",
                 prevention: " <br>La gastro-entérite est une infection le plus souvent virale.<br>
Afin de diminuer le risque de contamination :<br>
<span class = 'rose' style='color:#FE7988 ; '><strong>* </strong></span>Lavage systématique des mains après chaque change, avant chaque préparation alimentaire, après chaque contact de manière générale avec un enfant malade<br>
<span class = 'rose' style='color:#FE7988 ; '><strong>* </strong></span>Lavage des surfaces et du matériel en contact avec l’enfant malade (table à langer, sucettes, biberons...)<br><br>
<strong><span class = 'medoc' style='background-color: #66BBEC; color: white; border: 1px solid #66BBEC; font-weight: bolder; border-radius: 5px;'>+++</span></strong> Par ailleurs, il est difficile de prévenir les maux de ventre. Si votre enfant y est prédisposé, évitez de lui faire manger de grandes quantités de fruits ou de légumes crus, et veillez à ce qu’il n’ait pas froid après le repas.<br>
S’il vous paraît anxieux, parlez avec lui pour dédramatiser les situations qui sont sources de stress.<br><br> ")

d6.save!

d7 = Disease.new(name: "Brûlures", symptoms: ["Brûlures"], behavior: "Si votre enfant se brûle,<span class = 'rose' style='color:#FE7988 ; '><strong> ne paniquez pas</strong></span>.<br>
Refroidisser la brûlure à l’eau froide (<span class = 'rose' style='color:#FE7988 ; '><strong>15°C</strong></span> environ) pendant <span class = 'rose' style='color:#FE7988 ; '><strong>15 min</strong></span>.<br>
<br>Quel que soit leur degré de gravité, les brûlures nécessitent une prise en charge adaptée pour éviter des complications, une surinfection et la déshydratation",
                 when_consult: "En termes d’étendue, une brûlure est grave lorsque sa surface est supérieure à la moitié de la paume de la main de la victime.<br><br>
 La gravité d’une brûlure dépend de son étendue, de sa localisation et de son degré.<br>
<span class = 'rose' style='color:#FE7988 ; '><strong>* </strong></span>Au premier degré, la peau est rouge, sans cloques.</span> <br>
<span class = 'rose' style='color:#FE7988 ; '><strong>* </strong></span>Au deuxième degré, la peau comporte des cloques remplies de liquide.</span> <br>
<span class = 'rose' style='color:#FE7988 ; '><strong>* </strong></span>Au troisième degré, la peau est noire ou blanchâtre et insensible. </span><br><br>
 Les brûlures localisées au niveau des yeux, du nez, des mains, des orifices naturels, des organes génitaux ou de l'intérieur des cuisses sont classées parmi les brûlures graves.<br>",
                 need_know: "Une brûlure peut être provoquée par la chaleur : air chaud, vapeur, eau bouillante, flamme, soleil, cigarette, etc. Mais aussi par un frottement, l’électricité ou une substance chimique.<br>
  La prise en charge médicale des brûlures diffère selon leur origine.<br>
   Les enfants de moins de 5 ans représentent plus d’un quart des victimes hospitalisées pour brûlures. <br>
   Celles-ci sont le plus souvent causées par contact avec des liquides chauds. <br>
   Les contacts avec un solide chaud, par exemple, une plaque électrique, sont la deuxième cause de brûlures chez les enfants de moins de 4 ans.<br>
  Les complications sont avant tout locales. Le risque principal: que la cicatrisation soit de mauvaise qualité, ce qui aura des conséquences esthétiques et parfois fonctionnelles (peau rétractée).<br>
En fonction de sa profondeur, la cicatrisation d’une brûlure peut être plus ou moins difficile.<br>
 Elle peut nécessiter des soins pendant plusieurs semaines",
                 prevention: "Des règles de prudence simples permettent le plus souvent d’éviter les brûlures :<br><br>
<span class = 'rose' style='color:#FE7988 ; '><strong>* </strong></span>Prévenez les coups de soleil, surtout chez les enfants (utilisez casquette, chapeau, tee-shirt, crème solaire à indice de protection élevé, etc.).<br>
<span class = 'rose' style='color:#FE7988 ; '><strong>* </strong></span>Ne laissez jamais les enfants seuls près d’une source de chaleur (cuisinière, four, bougies, feu de cheminée, grill, barbecue, etc.).<br>
<span class = 'rose' style='color:#FE7988 ; '><strong>* </strong></span> Placez les casseroles contenant des aliments chauds hors de leur portée en tournant le manche vers le mur. Munissez la cuisinière d’un dispositif de protection.<br>
<span class = 'rose' style='color:#FE7988 ; '><strong>* </strong></span>Vérifiez la température de l’eau du bain, notamment pour les très jeunes enfants. Si l’eau du robinet est très chaude, faites-la régler.<br>
<span class = 'rose' style='color:#FE7988 ; '><strong>* </strong></span>Ne buvez pas de liquide chaud (thé, café, chocolat, soupe, etc.) lorsque vous avez un enfant sur les genoux.<br>
<span class = 'rose' style='color:#FE7988 ; '><strong>* </strong></span>Ne tentez jamais d’allumer ou de ranimer un feu ou un barbecue avec de l’alcool à brûler ou de l’essence.<br>
<span class = 'rose' style='color:#FE7988 ; '><strong>* </strong></span>Ne fumez jamais en présence de substances inflammables.<br>
<span class = 'rose' style='color:#FE7988 ; '><strong>* </strong></span>Respectez les consignes d’utilisation des réchauds, radiateurs, fers à repasser, fers à souder, etc.<br>
<span class = 'rose' style='color:#FE7988 ; '><strong>* </strong></span>N’effectuez jamais de branchements électriques sans avoir coupé l’arrivée d’électricité.<br>
<span class = 'rose' style='color:#FE7988 ; '><strong>* </strong></span>Pour éviter les brûlures chimiques, tenez hors de portée des enfants les produits ménagers.<br><br>")
d7.save!
