# Backup RMAN

## Note importante

RMAN (Recovery Manager) n'est pas un fichier SQL. Pour utiliser RMAN, vous devez :

1. Vous connecter à votre machine virtuelle
2. Ouvrir une session RMAN en mode target
3. Utiliser les commandes RMAN directement

## Connexion RMAN

Pour vous connecter à RMAN en mode target, utilisez la commande suivante :

```bash
rman target /
```

ou avec des identifiants spécifiques :

```bash
rman target sys/password@database
```

## Scripts de sauvegarde

Les fichiers SQL dans ce répertoire contiennent les scripts de sauvegarde RMAN à exécuter dans l'environnement RMAN.
