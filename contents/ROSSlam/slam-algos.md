![Slam](https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fanswers.ros.org%2Fupfiles%2F1339198636377568.png|size=400&caption="Slam")


En géométrie numérique et en robotique, la localisation et la cartographie simultanées (SLAM) est le problème de calcul consistant à construire ou à mettre à jour une carte d'un environnement inconnu tout en gardant une trace de l'emplacement d'un agent dans cet environnement. Bien que ce problème semble être au départ un problème de poule et d'œuf, il existe plusieurs algorithmes connus pour le résoudre, au moins approximativement, en un temps traitable pour certains environnements. Les méthodes de solution approximative les plus courantes sont le filtre particulaire, le filtre de Kalman étendu, l'intersection de covariance et GraphSLAM. Les algorithmes SLAM sont utilisés dans la navigation, la cartographie robotique. 



## Filtre à Particles
 
 
![FilterPaticle](https://3.bp.blogspot.com/-Ufkc8_kcxGs/Tst1Tt8ZWZI/AAAAAAAAEKc/pjwA56Ttb-s/w1200-h630-p-k-no-nu/Object+Recognition27.png|caption="Filter")
 Les filtres à particules ou méthodes de Monte Carlo séquentiel (SMC) sont un ensemble d'algorithmes de Monte Carlo utilisés pour résoudre les problèmes de filtrage qui surviennent dans le traitement du signal et l'inférence statistique bayésienne. Le problème de filtrage consiste à estimer les états internes dans les systèmes dynamiques lorsque des observations partielles sont faites, et que des perturbations aléatoires sont présentes dans les capteurs ainsi que dans le système dynamique. L'objectif est de calculer les distributions postérieures des états d'un processus de Markov, compte tenu de certaines observations partielles et bruitées. 
 
Le filtrage de particules utilise un ensemble de particules (aussi appelées échantillons) pour représenter la distribution postérieure d'un processus stochastique donné, compte tenu d'observations bruyantes et/ou partielles. Le modèle état-espace peut être non linéaire et les distributions de l'état initial et du bruit peuvent prendre n'importe quelle forme requise. Les techniques de filtrage des particules fournissent une méthodologie bien établie pour générer des échantillons à partir de la distribution requise sans nécessiter d'hypothèses sur le modèle état-espace ou les distributions d'état. Cependant, ces méthodes ne sont pas très performantes lorsqu'elles sont appliquées à des systèmes à très hautes dimensions.

Les filtres de particules mettent à jour leur prédiction de manière approximative (statistique). Les échantillons de la distribution sont représentés par un ensemble de particules ; à chaque particule est attribué un poids de probabilité qui représente la probabilité que cette particule soit échantillonnée à partir de la fonction de densité de probabilité. La disparité des poids conduisant à l'effondrement des poids est un problème courant rencontré dans ces algorithmes de filtrage ; cependant, il peut être atténué en incluant une étape de rééchantillonnage avant que les poids ne deviennent trop inégaux. Plusieurs critères de rééchantillonnage adaptatifs peuvent être utilisés, notamment la variance des poids et l'entropie relative par rapport à la distribution uniforme[5]. Lors de l'étape de rééchantillonnage, les particules de poids négligeable sont remplacées par de nouvelles particules à proximité des particules de poids plus élevé.





## Filtre de Kalman


En statistique et en théorie du contrôle, le filtrage de Kalman, également connu sous le nom d'estimation quadratique linéaire (EQL), est un algorithme qui utilise une série de mesures observées dans le temps, contenant du bruit statistique et d'autres inexactitudes, et produit des estimations de variables inconnues qui ont tendance à être plus précises que celles basées sur une seule mesure, en estimant une distribution de probabilité conjointe sur les variables pour chaque période. 

Le filtre de Kalman utilise le modèle dynamique d'un système (par exemple, les lois physiques du mouvement), les entrées de commande connues de ce système et de multiples mesures séquentielles (provenant par exemple de capteurs) pour former une estimation des quantités variables du système (son état) qui est meilleure que l'estimation obtenue en utilisant une seule mesure. En tant que tel, il s'agit d'un algorithme commun de fusion de capteurs et de données.

Les données des capteurs bruyants, les approximations dans les équations qui décrivent l'évolution du système et les facteurs externes qui ne sont pas pris en compte imposent des limites à la détermination de l'état du système. Le filtre de Kalman traite efficacement l'incertitude due aux données des capteurs bruyants et, dans une certaine mesure, aux facteurs externes aléatoires. Le filtre de Kalman produit une estimation de l'état du système en tant que moyenne de l'état prévu du système et de la nouvelle mesure en utilisant une moyenne pondérée. L'objectif des pondérations est que les valeurs dont l'incertitude estimée est meilleure (c'est-à-dire plus faible) soient plus "fiables". Les pondérations sont calculées à partir de la covariance, une mesure de l'incertitude estimée de la prédiction de l'état du système. Le résultat de la moyenne pondérée est une nouvelle estimation de l'état qui se situe entre l'état prédit et l'état mesuré, et dont l'incertitude estimée est meilleure que celle de l'un ou l'autre seul. Ce processus est répété à chaque étape du temps, la nouvelle estimation et sa covariance informant la prédiction utilisée dans l'itération suivante. Cela signifie que le filtre de Kalman fonctionne de manière récursive et ne nécessite que la dernière "meilleure estimation", plutôt que l'historique complet, de l'état d'un système pour calculer un nouvel état.

La certitude relative des mesures et de l'estimation de l'état actuel est une considération importante, et il est courant de discuter de la réponse du filtre en termes de gain du filtre de Kalman. Le gain de Kalman est le poids relatif donné aux mesures et à l'estimation de l'état actuel, et peut être "réglé" pour obtenir une performance particulière. Avec un gain élevé, le filtre accorde plus de poids aux mesures les plus récentes, et les suit donc de manière plus réactive. Avec un gain faible, le filtre suit de plus près les prédictions du modèle. Dans les cas extrêmes, un gain élevé proche de un se traduira par une trajectoire estimée plus sautillante, tandis qu'un gain faible proche de zéro atténuera le bruit mais réduira la réactivité.

Lors de l'exécution des calculs réels pour le filtre (comme discuté ci-dessous), l'estimation de l'état et les covariances sont codées en matrices pour traiter les multiples dimensions impliquées dans un seul ensemble de calculs. Cela permet une représentation des relations linéaires entre les différentes variables d'état (telles que la position, la vitesse et l'accélération) dans n'importe lequel des modèles de transition ou des covariances. 




