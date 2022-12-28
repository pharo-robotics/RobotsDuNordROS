##Qu'est-ce que ce?
Le sujet est littéralement comme un sujet de conversation. Le node de l'éditeur enregistre d'abord son sujet auprès du maître et commence ensuite à publier des messages sur un sujet. Les nodes d'abonnés qui souhaitent recevoir le sujet demandent au node éditeur les informations correspondant au nom du sujet enregistré dans le maître. Sur la base de ces informations, le nodes d'abonné se connecte directement au node d'éditeur pour échanger des messages en tant que sujet.


##Publication et Publisher
Le terme "publier" désigne l'action de transmettre des messages relatifs correspondant au sujet. Le node éditeur enregistre ses propres informations et sujets auprès du maître et envoie un message aux nodes d'abonnés connectés qui s'intéressent au même sujet. L'éditeur est déclaré dans le node et peut être déclaré plusieurs fois dans un même node.


##Subscription et Subcriptor
Le terme "s'abonner" désigne l'action de recevoir des messages relatifs correspondant au sujet. Le node d'abonné enregistre ses propres informations et sujets auprès du maître, et reçoit des informations d'éditeur qui publient le sujet relatif du maître. Sur la base des informations reçues de l'éditeur, le node d'abonné demande directement la connexion au node d'éditeur et reçoit des messages du node d'éditeur connecté. Un abonné est déclaré dans le node et peut être déclaré plusieurs fois dans un même node.
La communication thématique est une communication asynchrone qui est basée sur l'éditeur et l'abonné, et il est utile de transférer certaines données. Comme le sujet transmet et reçoit continuellement un flux de messages une fois connecté, il est souvent utilisé pour les capteurs qui doivent périodiquement transmettre des données. 


## Une communication unidirectionel

![PubSub](http://rmod-files.lille.inria.fr/Teach/pubsub.png width=400)

La communication sur le sujet utilise le même type de message pour l'éditeur et l'abonné, comme le montre la figure . Le node d'abonné reçoit l'information du node d'éditeur correspondant au nom de sujet identique enregistré dans le maître. Sur la base de ces informations, le node d'abonné se connecte directement au node d'éditeur pour recevoir les messages. Par exemple, si la position actuelle du robot est générée sous la forme d'informations d'odométrie en calculant les valeurs de codage des deux roues du robot mobile, les informations d'odométrie asynchrone peuvent être transmises en continu en flux unidirectionnel à l'aide d'un message thématique (x, y,i). Comme les sujets sont unidirectionnels et restent connectés pour envoyer ou recevoir des messages en continu, il convient aux données de capteurs qui nécessitent la publication périodique de messages. En outre, plusieurs abonnés peuvent recevoir un message d'un éditeur et vice versa. Des connexions multiples d'éditeurs et d'abonnés sont également disponibles.



