# LoL Esport Bot

Bot Discord that follow Lol esports and matches, including some news via SheepEsports website. Following :
LEC, LCK, LPL, LTA, LCP.

## Commands

| Commande | Description |
|----------|-------------|
| `!matches` | Show last 4 results and next 4 matches |
| `!today` | Show today's matches |
| `!team <nom>` | Show a team matches (ex: `!team fnatic`) |
| `!league <ligue>` | Show a league matches (ex: `!league lec`) |

## Automatic

- Check every hour if there is a match or will be a match and send a notification before it start.
- Check Sheep Esports news every two hours.

## ENV VARIABLES

| Variable | Description |
|----------|-------------|
| `DISCORD_TOKEN` | Token of the Discord's bot |
| `MATCH_CHANNEL_ID` | Channel ID to get the matches's notifications. |
| `NEWS_CHANNEL_ID` | Channel ID to get the news notifications. |

## How to start it

```
pip install -r requirements.txt
DISCORD_TOKEN=xxx MATCH_CHANNEL_ID=123 NEWS_CHANNEL_ID=456 python bot.py

Or launch it via Docker or Kube by referencing a .env file or directly in the CLI.
```
