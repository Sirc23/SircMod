# SircMod
-----
Balatro Joker mod made by Sirc (yours truly).

Introduces 11 new Jokers that are intended to be balanced around the vanilla experience.

The first 5 were created as a submission for a friend's modded Balatro tournament. (https://youtu.be/pGtL845Z2c4?si=GjVSIo1ZpOoTuzK3)

The other 6 were created so I could have more fun playing Balatro on my phone lol

-----

Requires [Steammodded](https://github.com/Steamodded/smods) and [Lovely](https://github.com/ethangreen-dev/lovely-injector). To install, just drop the SircMod folder into the mods folder.

-----
# Jokers

## Baron Hans
![baron_hans](https://github.com/user-attachments/assets/6bdf9cb7-ac31-4d2a-8f3c-1ae517450942)

#### Earn $4 at end of round. 1 in 6 chance this card is destroyed at end of round.
- Common Joker
- $6 cost
- Blueprint compatibility: None

## Bacon Hams
![bacon_hams](https://github.com/user-attachments/assets/0e5795f9-a788-4fe8-804e-46eff00eb207)
#### Earn $2 per $10 owned + $4 at end of round. 1 in 1,000 chance this card is destroyed at end of round.
- Common Joker
- $5 cost
- Blueprint compatibility: None
- Only appears in drop pool once Baron Hans has destroyed itself

## Chrysopoeia Crisis
![crisis](https://github.com/user-attachments/assets/6d56b966-e5a2-4ac9-9b9c-87b2cc4c4c45)
#### This Joker gains +4 Mult whenever it converts a scored Gold card to a Steel card or vice versa (Currently +0 Mult)
- Uncommon Joker
- $7 cost
- Blueprint compatibility: Matches current +Mult

## 401k
![401k](https://github.com/user-attachments/assets/580ed58c-88d3-4655-ab26-395c796738d0)
#### Gains $1 of sell value for every card sold. Sell value increases by 10% at end of round.
- Rare Joker
- $8 cost
- Blueprint compatibility: None

## Vanda
![vanda](https://github.com/user-attachments/assets/c2e1a985-0fff-47a5-83bf-bdd4df2b0c08)
#### Converts $1 into X0.1 Mult at the end of the shop (up to $10) (Currently X1 Mult)
- Legendary Joker
- $20 cost
- Blueprint compatibility: Matches current xMult
- This card is inspired by my Rivals of Aether Workshop character, [Vanda](https://steamcommunity.com/sharedfiles/filedetails/?id=2680107210)

## World Serpent
![world_serpent](https://github.com/user-attachments/assets/6fde0379-e778-43f2-a146-0fb0cadbed2d)
#### This Joker gains Chips equal to chips boosted by Planet cards on the final hand of round (Currently +0 Chips)
- Common Joker
- $4 cost
- Blueprint compatibility: Matches current Chips
- This card is inspired by Selrate's Rivals of Aether Workshop character, [Awatsu](https://steamcommunity.com/sharedfiles/filedetails/?id=3118680316)
- Card art designed by Selrate

## Coin on a String
![coin_on_a_string](https://github.com/user-attachments/assets/6fd546db-0cca-4808-802f-019b5c913ed5)
#### Once per Blind, this Joker will return as-is when sold or destroyed (Sellable: Yes)
- Common Joker
- $8 cost
- Blueprint compatibility: None

## Order Form
![order_form](https://github.com/user-attachments/assets/8699ec28-85b3-4299-a71c-8eb696d80386)
#### Sell this card to create a random Joker based on number of rounds passed (Odds: 50%, 50%, 0%, 0%)
- Common Joker
- $5 cost
- Blueprint compatibility: None

## The Grindstone
![the_grindstone](https://github.com/user-attachments/assets/8eb03441-21e8-4740-995f-f8e680b0e793)
#### Played cards permanently gain +1 Mult when scored an additional time
- Uncommon Joker
- $6 cost
- Blueprint compatibility: Yes

## Downplayer
![downplayer](https://github.com/user-attachments/assets/b0733fe3-1c94-4185-8421-4ba097d0756c)
#### This Joker gains X0.75 Mult each time a poker hand is downgraded (Currently X1 Mult)
- Uncommon Joker
- $7 cost
- Blueprint compatibility: Matches current xMult
- By default, this Joker will only appear in Multiplayer runs, which requires the [Multiplayer mod by virtualized](https://github.com/Balatro-Multiplayer/BalatroMultiplayer)
- This can be changed via the in-game config for this mod

## Blank Slate
![blank_slate](https://github.com/user-attachments/assets/d42acc35-abf8-4d3f-b5f0-56a347247c2c)
#### Stone cards act as the suit and rank that creates the highest scoring hand
- Rare Joker
- $8 cost
- Blueprint compatibility: No


-----
# Changelog

<details>
<summary>v0.2.0</summary>
<br>

- Added 6 new Jokers: World Serpent, Coin on a String, Order Form, The Grindstone, Downplayer, and Blank Slate

- Updated Chrysopoeia Crisis to also convert Steel Cards back into Gold cards, but scales slower

  - This simultaneously adds a bit more versatility to the card while also making it easier to use overall (previously, it became really strong with specific Jokers and was otherwise borderline useless to take)

- Updated 401k to not steal $1 whenever a card is sold

  - The idea was that you were investing the dollar in your 401k, but the card's description did not convey this information and it was simply obtuse

- Added a working in-game config for the mod

  - Each Joker can be individually included or excluded from the pool
 
  - Downplayer can be set to appear only in Multiplayer runs, or also in Singleplayer runs

  - Config options appear in the Joker's description

- Updated code internally to be more compatible with SMODS

</details>

<details>
<summary>v0.1.0</summary>
<br>

- Original release

- Is probably not called 0.1.0 in code
</details>
