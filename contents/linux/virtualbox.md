#Virtualization

La virtualisation consiste, en informatique, à exécuter sur une machine hôte, dans un environnement isolé, des systèmes d'exploitation — on parle alors de virtualisation système — ou des applications — on parle alors de virtualisation applicative. Ces ordinateurs virtuels sont appelés serveur privé virtuel (Virtual Private Server ou VPS) ou encore environnement virtuel (Virtual Environment ou VE). 

![Architecture](https://www.ni.com/cms/images/devzone/tut/HostedVirtualizationSmall_20090325191230.PNG|size=600&caption=Architecture)
 
Il peut sembler a priori étrange de simuler d'autres machines sur une machine hôte : un système d'exploitation est conçu pour utiliser du matériel qui est entièrement sous son contrôle. La juxtaposition de plusieurs systèmes non conçus pour communiquer entre eux peut faire craindre des inefficiences auxquelles s'ajoute le fait que le processus de virtualisation consomme des ressources. Le tableau n'est pas aussi sombre. D'une part, on évite une grande partie de ces inefficiences juste en disposant de disques différents pour chaque système, et d'autre part le coût de la mémoire permet à chacun de ces systèmes de rester résident, et parfois avec de larges sections de code partagées4. Par ailleurs, le microcode des mainframes comme des microprocesseurs inclut de plus en plus de fonctionnalités qui rendent la virtualisation plus efficace.

Enfin, il est courant pour une entreprise de disposer d'une quinzaine de serveurs fonctionnant à 15 % de leur capacité, de façon à pouvoir faire face aux pointes de charge sporadiques. Un serveur chargé à 15 % consomme autant d'énergie qu'un serveur chargé à 90 %, et regrouper plusieurs serveurs sur une même machine s’avère rentable si leurs pointes de charge ne coïncident pas systématiquement, même en incluant la charge de la virtualisation. La virtualisation des serveurs permet aussi une bien plus grande modularité dans la répartition des charges et la reconfiguration des serveurs en cas d'évolution ou de défaillance momentanée (plan de secours, etc.).

 

##Virtual Box 
 
![VBox](https://maxcdn.icons8.com/Share/icon/color/Logos/virtualbox1600.png|size=200&caption=VBox)
 
VirtualBox est un puissant produit de virtualisation x86 et AMD64/Intel64 pour les entreprises et les particuliers. Non seulement VirtualBox est un produit extrêmement riche en fonctionnalités et très performant pour les entreprises, mais c'est aussi la seule solution professionnelle qui soit disponible gratuitement en tant que logiciel libre selon les termes de la licence publique générale GNU (GPL) version 2. Voir "À propos de VirtualBox" pour une introduction.

Actuellement, VirtualBox fonctionne sur des hôtes Windows, Linux, Macintosh et Solaris et prend en charge un grand nombre de systèmes d'exploitation invités, notamment mais pas exclusivement Windows (NT 4.0, 2000, XP, Server 2003, Vista, Windows 7, Windows 8, Windows 10), DOS/Windows 3.x, Linux (2.4, 2.6, 3.x et 4.x), Solaris et OpenSolaris, OS/2 et OpenBSD.

VirtualBox est activement développé avec des versions fréquentes et possède une liste toujours croissante de fonctionnalités, de systèmes d'exploitation invités pris en charge et de plates-formes sur lesquelles il fonctionne. VirtualBox est un effort communautaire soutenu par une société dédiée : tout le monde est encouragé à contribuer tandis qu'Oracle s'assure que le produit répond toujours à des critères de qualité professionnelle. 


## Contexte du Cours 

Nous attendons de la plupart des étudiants qu'ils soient des utilisateurs de Windows. C'est très bien, mais nous avons exigé l'utilisation d'Ubuntu.
L'installation d'un système d'exploitation est toujours risquée. C'est pourquoi nous proposons l'utilisation de Virtualbox. 
Dans notre contexte d'utilisation, nous ne cherchons pas à maximiser l'allocation des ressources comme dans l'utilisation typique de la virtualisation, mais à pouvoir faire fonctionner un Ubuntu en plus de notre système Windows actuel.





