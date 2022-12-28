##Qu'est-ce que ce?
La communication sur service est une communication synchrone bidirectionnelle entre le client de service qui demande un service et le serveur de service qui répond à la demande. 


## Une communication bidirectionelle


Les méthodes de "publication" et de "souscription" du sujet mentionnées dans des cours precedents sont des méthodes asynchrones qui sont avantageuses pour la transmission périodique de données. D'un autre côté, il existe un besoin de communication synchrone qui utilise la demande et la réponse. En conséquence, ROS fournit une méthode de communication de messages synchronisés appelée "service".
Un service se compose d'un serveur de service qui ne répond que lorsqu'il y a une demande et d'un client de service qui peut envoyer des demandes et recevoir des réponses. Contrairement au sujet, le service est une communication de message à temps unique. Par conséquent, lorsque la demande et la réponse du service sont terminées, la connexion entre deux nœuds sera déconnectée. Un service est souvent utilisé pour commander à un robot d'effectuer une action spécifique ou à des nœuds d'effectuer certains événements avec une condition spécifique. Le service ne maintient pas la connexion, il est donc utile de réduire la charge du réseau en remplaçant le sujet. Par exemple, si le client demande au serveur l'heure actuelle le serveur vérifie l'heure et répond au client, et la connexion est terminée.



