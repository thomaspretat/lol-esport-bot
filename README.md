# LoL Esport Bot

Bot Discord qui suit les matchs de League of Legends esport et les news Sheep Esports.

## Leagues suivies

LEC, LCK, LPL, LTA, LCP

## Commandes

| Commande | Description |
|----------|-------------|
| `!matches` | Affiche les 4 derniers resultats et les 4 prochains matchs |
| `!today` | Affiche les matchs du jour |
| `!team <nom>` | Affiche les matchs d'une equipe (ex: `!team fnatic`) |
| `!league <ligue>` | Affiche les matchs d'une ligue (ex: `!league lec`) |

## Fonctionnement automatique

- Check des matchs toutes les 1h avec notification 1h avant le debut
- Check des news Sheep Esports toutes les 2h

## Variables d'environnement

| Variable | Description |
|----------|-------------|
| `DISCORD_TOKEN` | Token du bot Discord |
| `MATCH_CHANNEL_ID` | ID du channel pour les notifications de matchs |
| `NEWS_CHANNEL_ID` | ID du channel pour les news Sheep Esports |

## Lancer le bot

```
pip install -r requirements.txt
DISCORD_TOKEN=xxx MATCH_CHANNEL_ID=123 NEWS_CHANNEL_ID=456 python bot.py
```
