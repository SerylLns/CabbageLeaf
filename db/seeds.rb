require "open-uri"

Interaction.destroy_all
Article.destroy_all
User.destroy_all
# 1st Time
User.create!( username: "augustin", email: "augustin@lewagon.com", password: "password" )

Article.create!(
  title: "Après l'Allemagne, l'Albanie interdit les ”thérapies de conversion” des homosexuels",
  content:"Depuis vendredi, les 'thérapies de conversion' des homosexuels sont illégales en Albanie. Alors qu'un texte voté en mars 2018 par le Parlement européen enjoignait les pays des l'UE à interdire ces pratiques, peu d'États membres ont depuis légiféré en ce sens.
          L'Albanie rejoint Malte, certaines autonomies espagnoles, et dernièrement l'Allemagne, ayant déjà banni ces pratiques. Les psychologues albanais ont interdit les prétendues 'thérapies de conversion' qui visent à changer l'orientation sexuelle de jeunes membres de la communauté LGBTI (lesbiennes, gays, bisexuels, transgenres et intersexe),
          une avancée saluée, samedi 16 mai, par les associations de défense des droits dans le pays.
          Prise la veille par l'ordre des psychologues, la décision est 'considérablement importante pour les adolescents LGBTI', a réagi l'association de défense pour les droits des homosexuels Pink Embassy dans un communiqué. En Albanie, tous les thérapeutes doivent être membres de l'ordre des psychologues, dont les décisions sont définitives et 'valides juridiquement', a expliqué à l'AFP Altin Hazizaj, président de cette association. 'C'est l'ultime décision qui n'a pas besoin de passer par le pouvoir législatif ou exécutif pour entrer en vigueur', a-t-il ajouté.
          'Bien que les rapports sur l'utilisation de ces thérapies en Albanie soient peu nombreux, les autoriser représentait une grave préoccupation', a-t-il poursuivi.",
  category: "lgbt+,monde,droit"
)
file = URI.open("https://s.france24.com/media/display/0cd5e1b0-97a8-11ea-820f-005056bf18d4/w:1280/p:16x9/000_14V3JD.webp")
Article.last.photo.attach(io: file, filename: 'lgbtq+yz.png', content_type: 'image/png')
Interaction.create!(
  article: Article.last,
  read_later: true,
  user: User.last
)

# 2st Time
User.create!(
  username: "Mathou",
  email: "mathou@lewagon.com",
  password: "password"
)
Article.create!(
  title: "Les footballeuses brésiliennes remportent le match de l’égalité salariale",
  content: "Les joueuses de la sélection brésilienne de football ont remporté leur combat pour l’égalité salariale, avec l’annonce historique par leur fédération, mercredi 2 septembre, de primes équivalentes à celles de Neymar et des autres stars de la sélection masculine.
  Le président de la Confédération brésilienne de football (CBF), Rogério Caboclo, a fait part en conférence de presse de sa décision d’attribuer «le même montant pour les primes et les indemnités journalières aux hommes et aux femmes » en sélection. «Ainsi, les joueuses vont gagner autant que les joueurs, il n’y a plus de différence de genre, la CBF traite hommes et femmes de façon égalitaire », a-t-il ajouté. C’est loin d’être le cas au sein des clubs, avec une différence de salaires abyssale entre hommes et femmes, dans le monde entier.
  Grâce aux mesures annoncées par la CBF, les joueuses appelées en sélection féminine gagneront les mêmes montants que les hommes à chaque rassemblement, y compris pour les primes de match attribuées lors de compétitions internationales.
  «L’an prochain, elles gagneront les mêmes primes que les hommes lors des Jeux olympiques. Et lors de la prochaine Coupe du Monde [en 2023], les primes seront les mêmes, proportionnellement à ce qui est attribué par la FIFA [Fédération internationale de football] », a expliqué M. Caboclo.
  La Fédération australienne de football avait déjà annoncé l’égalité salariale entre hommes et femmes, en novembre 2019. En mai dernier, les championnes du monde américaines avaient été défaites sur le terrain judiciaire, un magistrat ayant débouté leur demande d’égalité de rémunération.
  La Suédoise Pia Sundhage, sélectionneuse du Brésil depuis juillet 2019, n’a pas caché sa satisfaction à l’annonce de cette avancée historique pour l’égalité hommes-femmes, dans un pays pourtant connu pour être traditionnellement machiste. «J’espère que tout le monde arrive à voir le sourire dans mes yeux [elle portait un masque en conférence de presse]. C’est historique. C’est très spécial de pouvoir faire partie de tout ça. Nous allons travailler avec ardeur, je suis chanceuse », s’est-elle félicitée.
  Lire l’entretien avec Madeleine Pape : «La crise actuelle, occasion unique de rendre le sport plus équitable» entre hommes et femmes
  Les joueuses brésiliennes avaient déjà touché des primes équivalentes à celles des hommes lors du Tournoi de France, organisé en mars.
  La sélectionneuse de 60 ans, qui a mené les Américaines à deux titres olympiques en 2008 et 2012, a également célébré l’arrivée d’une femme, Duda Luizelli, à la coordination des sélections féminines, poste occupé auparavant par un homme.
  Et la CBF a également créé un nouveau poste-clé, celui de coordinatrice des compétitions de football féminin. C’est Aline Pellegrino qui sera chargée de l’organisation des tournois de clubs au Brésil.",
  category:"sport,femme,amérique"
)
file = URI.open('https://img.lemde.fr/2020/09/02/0/0/6000/4000/1328/0/45/0/2d7f179_5252699-01-06.jpg')
Article.last.photo.attach(io: file, filename: 'deuxfemmes.png', content_type: 'image/jpg')
Interaction.create!(
  article: Article.last,
  read_later: true,
  user: User.last
)

# 3st Time
User.create!(
  username: "Yanis",
  email: "yanis@lewagon.com",
  password: "password"
)
Article.create!(
  title:"L’Ecosse rend les protections périodiques accessibles gratuitement",
  content:"Neuf mois après avoir fait un premier pas dans cette direction, les députés écossais ont voté mardi 24 novembre en faveur d’un accès gratuit aux protections périodiques afin de lutter contre la précarité menstruelle, une première dans le monde à cette échelle.
  Sur Twitter, la première ministre écossaise, Nicola Sturgeon, a fait part de sa «fierté d’avoir voté pour cette loi révolutionnaire, qui fait de l’Ecosse le premier pays au monde à fournir des protections périodiques gratuites à toutes celles qui en ont besoin».
  Les 121 membres du Parlement local d’Holyrood ont tous approuvé ce texte, qui vise à introduire dans la loi le droit d’accéder gratuitement à des tampons et des serviettes hygiéniques. «Nous sommes tous d’accord pour dire que personne ne devrait avoir à s’inquiéter de ses prochains tampons ou protections réutilisables», a déclaré au Parlement la députée travailliste écossaise Monica Lennon, à l’origine de la proposition de loi.
  Le gouvernement écossais devra désormais permettre à quiconque ayant besoin de tampons ou de serviettes hygiéniques partout en Ecosse de les obtenir gratuitement. Les écoles, lycées et universités devront mettre à disposition gratuitement une gamme de protections périodiques dans leurs toilettes. Le gouvernement écossais pourra aussi obliger des organismes publics à fournir gratuitement ces produits.
  «Un jour de fierté pour l’Ecosse»
  Malgré une opposition initiale et des craintes quant au coût de la mesure estimé à 9,7 millions de livres (environ 11 millions d’euros) par an, la proposition de loi a fait son chemin jusqu’à son adoption mardi, avec le soutien du gouvernement écossais.
  La campagne de Monica Lennon avait été soutenue par une large coalition de syndicats, d’organisations de femmes et d’associations caritatives. Sur Twitter, la députée a remercié «tous ceux qui ont fait campagne » ainsi que ses collègues parlementaires qui ont approuvé le texte. «C’est un jour de fierté pour l’Ecosse et un signal au monde qu’il est possible de mettre en place un accès universel gratuit aux protections périodiques », a-t-elle souligné.
  Rose Caldwell, directrice générale de l’organisation caritative Plan International UK, a salué le rôle « pionnier » de l’Ecosse. Elle a rappelé l’importance de cette loi, expliquant qu’un «trio toxique » de problèmes provoquait la précarité menstruelle : le «coût des protections hygiéniques», le «manque d’éducation» et la «stigmatisation et la honte liée aux règles».
  En France, la distribution gratuite de protections hygiéniques est expérimentée dans plusieurs collèges et lycées ainsi qu’auprès des femmes en situation de précarité.",
  category: "femme,santé,droit"
)
file = URI.open('https://slack-imgs.com/?c=1&o1=ro&url=https%3A%2F%2Fimg.lemde.fr%2F2020%2F02%2F12%2F78%2F0%2F3888%2F1939%2F1440%2F720%2F60%2F0%2Fc97d05e_q7yof1vA-kDc6b4mKWG51C8z.jpg')
Article.last.photo.attach(io: file, filename: 'tampax.png', content_type: 'image/jpg')
Interaction.create!(
  article: Article.last,
  read_later: true,
  user: User.last

)

# 4st Time
User.create!(
  username: "Jerem",
  email: "jeremy@lewagon.com",
  password:"password"
)
Article.create!(
  title: "Allemagne: une loi réduisant la pollution lumineuse et les pesticides pour préserver les insectes",
  content:"Le gouvernement allemand va présenter une loi visant à restreindre la pollution lumineuse et limiter l'utilisation de pesticides dans le but de préserver les insectes, pilier des écosystèmes dont la disparition s'accélère.&nbsp;Les associations écologistes saluent cette initiative mais estiment que le gouvernement ne va pas assez loin en n'interdisant pas immédiatement l'usage de certains herbicides comme le controversé
  Ce projet de loi présenté mercredi par la ministre de l'Environnement Svenja Schulze, et dont l'AFP a obtenu une copie, est la concrétisation d'un ensemble de mesures présentées par le gouvernement allemand mi-septembre en faveur du bien-être animal et de l'information des consommateurs.
  Dans la pratique, l'utilisation des puissants projecteurs lumineux extérieurs, appelés skytracer - utilisés lors d'événements et d'animations locales pour signaler de loin le lieu d'une activité, comme par exemple une discothèque - sera limitée.
  Considérés comme particulièrement nuisibles pour l'avifaune, ils seront interdits durant les principales périodes de migration des oiseaux au printemps et en automne, à savoir du 1er février au 30 mai et du 15 juillet au 15 décembre, du coucher au lever du soleil.",
  category: "europe,écologie,animal"
)
file = URI.open('https://www.sciencesetavenir.fr/assets/img/2020/08/05/cover-r4x3w1000-5f2ae15fce0ba-bc8b721f355583b65fd5dcd655013a537d3fbe2e-jpg.jpg')
Article.last.photo.attach(io: file, filename: 'lesmoustiquesapique.png', content_type: 'image/jpg')
Interaction.create!(
  article: Article.last,
  read_later: true,
  user: User.last
)

# 5st Time
User.create!(
  username: "Séryl",
  email: "seryl@lewagon.com",
  password: "password"
)
Article.create!(
  title:"L’irrésistible ascension du vélo en France et en Europe",
  content:"Bon pour la santé, bon pour la planète, 2020 est incontestablement l'année du vélo. En 2019, près de 4 actifs urbains sur 10 déclaraient se rendre au travail à vélo. Une tendance qui s’est nettement accélérée cette année en France. Entre les grèves contre la réforme des retraites du début de l’année et l’épidémie de Covid-19, nombre d’habitants des grandes villes ont choisi de se mettre aux deux roues pour leurs déplacements de proximité et se rendre au bureau. En 2020, le nombre de cyclistes a ainsi augmenté de plus de 200 % sur certains axes dans les grandes villes de France, selon Strava, une application réservée aux piétons et cyclistes.
  Cette tendance concerne d’ailleurs toute l’Europe. Aux Pays-Bas, déjà en pointe dans le domaine, les ventes de vélos ont explosé au point que l’on a comparé les achats de vélos aux ventes effrénées de papiers toilette. En Belgique, l’utilisation de vélos a augmenté de 69 %, d’après les statistiques de Google Maps. À Londres, la pratique du deux roues a pris une telle ampleur que le maire de la ville a promis de quadrupler le nombre des pistes cyclables dans la capitale.",
  category: 'sport,écologie,europe'
)
file = URI.open('https://res.cloudinary.com/df310vkui/image/upload/v1615910845/The%20Cabbage%20Leaf/velo_dans_laville_ypub3j.webp')
Article.last.photo.attach(io: file, filename: 'velovelovelo.png', content_type: 'image/png')
Interaction.create!(
  article: Article.last,
  read_later: true,
  user: User.last
)
# 6X
Article.create!(
  title:"L'OMS annonce l'éradication de la polio sur le continent africain",
  content: "La poliomyélite a été déclarée mardi 'éradiquée' du continent africain par l'Organisation mondiale de la Santé, après quatre années consécutives sans cas déclaré et des efforts massifs de vaccination des enfants.
  Le fléau de la poliomyélite, cette maladie contagieuse qui provoque des paralysies irréversibles chez les enfants atteints, a été éradiquée du continent africain, a annoncé mardi 25 août l'OMS.
  Cette victoire pour la communauté internationale a été obtenue après quatre années consécutives sans cas déclaré et des efforts massifs de vaccination des enfants.
  'Aujourd'hui, les membres de la Commission de certification pour la région Afrique (ARCC) - organisme de certification de l'OMS - déclare que la transmission du poliovirus sauvage a été interrompue' en Afrique, a affirmé sa présidente, la Dr Rose Leke.
  Provoquée par le 'poliovirus sauvage' (PVS), la poliomyélite est une maladie infectieuse aiguë et contagieuse qui touche principalement les enfants, attaquant la moelle épinière et pouvant provoquer une paralysie irréversible.
  Elle était endémique partout dans le monde, jusqu'à la découverte d'un vaccin dans les années 1950. Les pays les plus riches y ont eu rapidement accès, mais l'Asie et l'Afrique sont restés longtemps d'importants foyers infectieux.
  Convaincre les populations
  En 1988, l'OMS dénombrait 350 000 cas à travers le monde et encore plus de 70 000 cas rien qu'en Afrique en 1996.",
  category: "santé,science,afrique"
)
file = URI.open('https://res.cloudinary.com/df310vkui/image/upload/v1615911045/The%20Cabbage%20Leaf/polio2_yavfqz.jpg')
Article.last.photo.attach(io: file, filename: 'petitafricain.png', content_type: 'image/jpg')
# 7X
Article.create!(
  title:"L'Égypte interdit les promenades touristiques à dos de dromadaire",
  content: "Fatigués d'avoir sur le dos touristes et promeneurs toute la journée, les dromadaires égyptiens retrouvent, si ce n'est la liberté, un peu de répit. Les autorités locales se sont montrées sensibles, selon Le Parisien, aux demandes insistantes de l'association Peta, qui agit pour protéger les animaux à travers le monde. Sont mises en cause les conditions souvent extrêmes dans lesquelles sont exploités les dromadaires à des fins touristiques, en plein soleil sans trop avoir accès à de quoi boire ou à un peu d'ombre. Souvent ont-ils l'air épuisés et affaiblis. Il en va de même pour les chevaux utilisés dans les mêmes conditions, également pour les touristes.
  L'association Peta a d'abord diffusé les images de certains de ces animaux exténués, exploités avec une maltraitance flagrante. Un an de pression sur le gouvernement égyptien et 100 000 soutiens plus tard, Peta annonce avoir remporté une bataille : « Le ministère du Tourisme égyptien a annoncé son intention d'interdire les promenades à dos de dromadaires et de cheval sur le site des pyramides de Gizeh et dans les zones archéologiques. Les touristes pourront utiliser des voitures et des bus électriques. »
  Petra et Santorin appelées à suivre le mouvement
  Désormais, l'ONG souhaite étendre cette interdiction à d'autres importants lieux touristiques qui continuent l'exploitation de chevaux et dromadaires pour la promenade des touristes. Ainsi Peta appelle « les autres destinations qui proposent encore des promenades en calèche ou à dos d'animaux, telles que Petra, en Jordanie, ou Santorin, en Grèce, à suivre les traces de l'Égypte et à passer au transport sans animaux ».",
  category: "animaux,tourisme,afrique"
)
file = URI.open('https://res.cloudinary.com/df310vkui/image/upload/v1615911530/The%20Cabbage%20Leaf/jeune-chameau_rgy5bg.jpg')
Article.last.photo.attach(io: file, filename: 'deschamals.jpg', content_type: 'image/jpg')
# 10X
Article.create!(
  title:"Allonger le congé paternité : une nouvelle avancée.",
  content:"Le Sénat a adopté, ce samedi 14 novembre, l’allongement du congé de paternité à 28 jours dont 7 obligatoires dans les mêmes termes que l’Assemblée nationale.
  “Une réforme historique”, s’est réjoui le secrétaire d’État chargé de l’Enfance et des Familles Adrien Taquet. Ce samedi 14 novembre, le Sénat a adopté à une écrasante majorité l’allongement du congé de paternité. Les jeunes papas auront désormais droit à 28 jours de congé, dont 7 seront obligatoires.
  La mesure entrera en vigueur à partir du 1er juillet 2021, dans neuf mois donc. Tous les futurs parents qui entendent se lancer dans l’aventure à partir d’aujourd’hui bénéficieront donc de cette mesure. Le Journal des femmes précise que les 7 jours obligatoires seront à prendre à la naissance de l’enfant.
  En attendant, les règles actuelles s’appliquent : les pères ont le droit à 3 jours de congés de naissance, pris immédiatement après celle-ci, auxquels s’ajoutent 11 jours de congé de paternité pour la naissance d’un enfant, et 18 pour la naissance d’un enfant ou plus, comme le rappelle service-public.fr.",
  category: "france,égalite,droit"
  )
  file = URI.open('https://res.cloudinary.com/df310vkui/image/upload/v1615911917/The%20Cabbage%20Leaf/iStock-homme-bebe-conge-paternite_rn4m5o.jpg')
  Article.last.photo.attach(io: file, filename: 'papa.png', content_type: 'image/jpg')
  # 9X
  Article.create!(
    title:"Joe Biden annonce le retour des États-Unis dans l’accord de Paris sur le climat",
    content:"Le nouveau président américain Joe Biden a signé mercredi, quelques heures seulement après sa prise de fonction, une série de décrets dont l’un portant sur le retour des États-Unis dans l’accord de Paris sur le climat.
    Joe Biden a annoncé mercredi 20 janvier, quelques heures après son investiture à la présidence américaine, le retour des États-Unis dans l’accord de Paris sur le climat, la mesure phare d’une série de décrets présidentiels destinés à rétablir le leadership de Washington dans la lutte contre le changement climatique.
    Les décrets signés par le nouveau locataire de la Maison blanche prévoient aussi d’examiner toutes les mesures décidées par son prédécesseur Donald Trump qui ont nui à la lutte contre le changement climatique, ainsi que la révocation du permis accordé pour la construction de l’oléoduc Keystone XL devant relier la province canadienne d’Alberta au Nebraska, ou encore un moratoire sur les activités pétrolières et gazières dans une réserve naturelle de l’Arctique où l’administration Trump avait récemment autorisé le développement de projets.
    Il s’agit de l’amorce d’un virage politique majeur pour le deuxième pays émetteur de gaz à effet de serre au monde, derrière la Chine. L’administration Trump avait mis au pilori la science climatique et était revenue sur des normes environnementales pour favoriser le développement de l’industrie fossile. “Welcome back!”
    Joe Biden a transmis mercredi soir une lettre formelle au secrétaire général de l’ONU pour l’informer du retour des États-Unis dans l’accord sur le climat, un retour qui sera effectif le 19 février.
    Le président français Emmanuel Macron, qui a adressé mercredi ses félicitations à son nouvel homologue américain, s’est réjoui de cette annonce. “Je salue le retour des États-Unis au sein de l’Accord de Paris pour le climat : Welcome back!“, a-t-il écrit sur Twitter.
    À Bruxelles, la présidente de la Commission européenne Ursula von der Leyen a salué une “nouvelle aube” sous Joe Biden, et l’Union européenne a dit dans un communiqué se réjouir du retour des États-Unis dans l’accord sur le climat.
    Joe Biden avait promis durant la campagne électorale de remettre les États-Unis sur la voie de la neutralité carbone d’ici 2050 pour répondre à la diminution des émissions de gaz à effet de serre que les scientifiques considèrent comme nécessaire pour éviter des ravages encore plus importants du réchauffement climatique à travers le monde.Obstacles
    Le chemin ne sera toutefois pas sans obstacles, alors que la question climatique divise la classe politique américaine et fait l’objet d’un lobby des compagnies pétrolières.
    Alors que des activistes favorables à la protection de l’environnement ont salué les décrets signés par Joe Biden, des groupes industriels et des élus conservateurs ont critiqué les mesures.
    Un groupe de sénateurs républicains a appelé mercredi Joe Biden à présenter au Congrès son projet pour le retour des États-Unis dans l’accord de Paris afin que les élus puissent l’“examiner”. Steve Daines, sénateur républicain du Montana, a déclaré que le nouveau chef de la Maison Blanche ne pouvait pas intégrer les États-Unis à un traité international sans l’aval d’une majorité des deux tiers au Sénat.
    Le principal groupe de lobbying de l’industrie pétrolière et gazière américaine a déclaré penser que bloquer le projet d’oléoduc Keystone XL était un “pas en arrière” qui allait nuire au rétablissement de l’économie américaine.",

    category: "politique,écologie,amérique"
  )
  file = URI.open('https://res.cloudinary.com/df310vkui/image/upload/v1615912232/The%20Cabbage%20Leaf/bibi_kzsoqa.jpg')
  Article.last.photo.attach(io: file, filename: 'donaldtrump.png', content_type: 'image/png')

  Article.create!(
  title:"L'histoire courageuse de la nouvelle directrice de la NASA pour le projet Mars Rover",
  content:"Pour une petite fille qui a grandi en Colombie dans les années 1980, une carrière scientifique à la NASA a peut-être semblé aussi probable que de mettre le pied sur une planète lointaine. De nos jours, cependant, Diana Trujillo est ingénieure en aérospatiale.
  En fait, elle dirige une équipe de 45 personnes au laboratoire de la NASA qui est responsable du bras robotique du dernier rover martien.
  NASA/JPL-Caltech, illustration de l’atterrissage du rover Perseverance. Comment Diana est-elle passée du simple rêve du cosmos à son exploration réelle ? C’est une histoire de persévérance qui a peut-être été écrite dans les étoiles.
  Née en 1983, même lorsqu’elle était jeune fille, Diana était certaine de sa passion pour la science. Mais elle doutait jusqu’où elle serait en mesure de s’élever dans un domaine dominé par les hommes. Le destin est intervenu lorsque son père - pensant qu’avoir une langue seconde pourrait élargir les horizons de sa fille - lui a offert de l’envoyer vivre avec une tante à Miami.
  À seulement 17 ans à l’époque, elle l’a pris en charge. Avec seulement 300 $ à son actif, Trujillo a pris une série d’emplois d’entretien ménager pour passer par le Miami Dade College. En plus d’apprendre l’anglais, elle a étudié l’ingénierie aérospatiale. Ce n’était pas facile. Parfois, elle devait prendre six bus juste pour se rendre en classe. D’autres jours, elle nettoyait les salles de bains pour l’aider à se frayer un chemin à travers ses études. Mais elle ne s’est pas plainte.
  «J’ai vu tout ce qui se passait sur mon chemin comme une opportunité », a déclaré Diana à CBS News. «Je ne le voyais pas comme : «Je n’arrive pas à croire que je fasse ce travail la nuit, ou «Je n’arrive pas à croire que je nettoie une salle de bain en ce moment ». C’était juste plus comme : «Je suis heureux d’avoir un emploi et de pouvoir acheter de la nourriture et avoir une maison pour dormir... »
  Puis est venu un autre moment qui a changé la vie de Trujillo. L’un de ses professeurs a mentionné par hasard qu’ils connaissaient en fait un astronaute. Se rendre compte qu’elle n’était «qu’à une personne de connaître un astronaute » était tout ce qu’il fallait pour galvaniser les objectifs de carrière de Diana.
  Trujillo a poursuivi ses études. Devenue la première femme hispanique à être admise à l’Académie de la NASA, elle a si bien réussi qu’elle a été l’une des deux seules étudiantes à recevoir une offre d’emploi de la prestigieuse institution.
  Une histoire de persévérance. Alors qu’elle était à l’Académie de la NASA, elle a été présentée à l’expert en robots Brian Roberts. Reconnaissant son potentiel, il a invité Trujillo à rejoindre son équipe de recherche en robotique spatiale de la NASA à l’Université du Maryland, où elle a obtenu son baccalauréat en génie aérospatial en 2007.
  Plus tard cette année-là, elle est devenue membre de l’équipe du Goddard Space Flight Center de la NASA. Depuis lors, Trujillo a porté de nombreux chapeaux à l’agence spatiale américaine, y compris en tant que chef de mission pour le Curiosity Rover en 2014, pour lequel elle a reçu le signe de tête comme l’un des 20 Latinos les plus influents de l’industrie technologique.
  Une voix pour tout le monde
  Diana ne s’est pas arrêtée là. En février, lorsque le rover Perseverance a atterri à la surface de Mars, il a été accompagné de commentaires de Trujillo dans ce qui est devenu la toute première transmission en espagnol de la NASA.
  Elle a donné suite à ce coup d’État en animant la toute première émission en espagnol de l’agence, Juntos perseveramos (Ensemble, nous persévérons), qui a depuis enregistré plus de 2,5 millions de visites sur YouTube.
  Peut-être sans surprise, Trujillo a remporté de nombreux prix dans son domaine, plus récemment, l’ordre du mérite du Congrès colombien Policarpa Salavarrieta.
  Encourager les autres à atteindre les étoiles. Parallèlement à ses efforts scientifiques en cours, Diana Trujillo poursuit sa mission d’exemple, encourageant les femmes issues de milieux marginalisés à poursuivre une carrière dans les domaines des STIM.
  S’il faut une fusée pour briser le plafond de verre, qu’il en soit ainsi. La propre histoire de Diana est la preuve que juste au-delà de cette barrière se trouve tout un univers d’opportunités qui attendent toute personne prête à travailler assez dur pour atteindre les étoiles. ",
  category: "business,amérique,femme"
  )
  file = URI.open('https://slack-imgs.com/?c=1&o1=ro&url=https%3A%2F%2Fwww.goodnewsnetwork.org%2Fwp-content%2Fuploads%2F2021%2F03%2FDiana_Trujillo-public-domain-NASA-on-the-Commons-%40-Flickr-Commons.jpg')
  Article.last.photo.attach(io: file, filename: 'lameufastronaute.jpg', content_type: 'image/jpg')
