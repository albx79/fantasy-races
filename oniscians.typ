#set page(paper: "a4", margin: (x: 2.3cm, y: 2.4cm), numbering: "1")
#set text(font: "Latin Modern Roman", size: 10.5pt, lang: "en")
#set par(justify: true, leading: 0.62em, spacing: 1.1em)
#set heading(numbering: none)

#show heading.where(level: 1): it => [
  #v(0.6em)
  #block(text(font: "Latin Modern Sans", size: 15pt, weight: "bold", fill: rgb("#3d2f1f"))[#it.body])
  #line(length: 100%, stroke: 0.6pt + rgb("#8a6d3b"))
  #v(0.2em)
]

#show heading.where(level: 2): it => [
  #v(0.5em)
  #block(text(font: "Latin Modern Sans", size: 11.5pt, weight: "bold", fill: rgb("#5c4630"))[#it.body])
  #v(0.1em)
]

// Designer's note callout box
#let note(body) = block(
  fill: rgb("#f3ede0"),
  stroke: (left: 2.2pt + rgb("#9a7b45")),
  inset: (x: 11pt, y: 8pt),
  radius: 1.5pt,
  width: 100%,
  above: 0.7em,
  below: 0.9em,
  [
    #text(font: "Latin Modern Sans", size: 8pt, weight: "bold", fill: rgb("#9a7b45"), tracking: 1pt)[DESIGNER'S NOTE]
    #v(3pt)
    #text(size: 9.3pt, style: "italic", fill: rgb("#3d2f1f"))[#body]
  ]
)

// Title block
#align(center)[
  #text(font: "Latin Modern Sans", size: 22pt, weight: "bold", fill: rgb("#3d2f1f"))[The Oniscians]
  #v(-0.3em)
  #text(font: "Latin Modern Sans", size: 12pt, fill: rgb("#5c4630"))[A Homebrew Player Race — with Designer's Notes]
  #v(0.4em)
  #line(length: 40%, stroke: 0.6pt + rgb("#9a7b45"))
]

#v(0.3em)
#emph[A pillworm-like, invertebrate, subterranean tool-using species. Built as an alternative to traditional "short human" dwarves — no vision, no spoken language, and a genuinely different way of experiencing the world both underground and on the surface.]

#note[
  The whole project started from one constraint: keep dwarves' *cultural* core — stonework, permanence, craft, memory, clan — but throw out the "short stocky human" body entirely and rebuild the senses from real biology. Opening the design to invertebrates, not just non-human mammals, was the key unlock: arthropods and mollusks already have real-world precedent for every non-visual sense this species needed, often more elegantly than the mammalian equivalent.
]

== Concept & Physiology

- Roughly 1.5 m tall, segmented, isopod/pillworm-like body plan with a chitinous exoskeleton.
- *Lower limbs*: multiple pairs, dedicated to locomotion.
- *Upper limbs*: four pairs of thin, arthropod-like limbs — closer in function to fingers than to hands or arms. Single pairs are dexterous and precise (fine manipulation, delicate work) but individually weak; anything requiring real force or a two-handed weapon needs most or all pairs engaged together.
- *Head*: no eyes in the human sense — only vestigial photoreceptors (light/dark only, no image formation) and several long, mobile antennae used for smell, taste, and fine tactile sensing.
- No lungs/larynx analog for producing human speech; no ears for airborne sound.

#note[
  Vision is evolutionarily cheap and near-universal because light is available almost everywhere, and even a crude photoreceptor pays off immediately — that's why eyes evolved 40+ times independently. Echolocation, by contrast, is expensive (a dedicated sound emitter, high-resolution hearing, fast neural timing) and only pays off where vision fails, which is why it's rare: bats, toothed whales, oilbirds, swiftlets, a few shrews. Other lineages facing the same dark-cave problem often evolved something else entirely because they already had a cheaper option on hand — weakly electric fish use electroreception, pit vipers use infrared, fish already have a passive lateral line. That's the direct precedent for giving the Oniscians *substrate vibration sensing plus chemoreception* instead of echolocation — closer to spider and insect biology than to bat or whale biology.
]

== Senses

*Tremorsense (primary, tiered by range)*
- *0–60 ft.*: Precise. Anything in contact with the ground/a connected solid surface is located exactly.
- *61–120 ft.*: Vague. General direction and rough distance only, for creatures Medium+ or moving forcefully; disadvantage on attacks based only on this; small/stealthy movement doesn't register.
- *120+ ft.*: Only very large-scale events (explosions, collapses) register, as a "something happened, that direction" cue.

*Scent (secondary, for anything not grounded)*
- Flying, waterborne, or otherwise non-grounded creatures are invisible to tremorsense but detectable by antenna-scent within ~30 ft. (wind-affected). Tells you _presence_ and a rough bearing only — never precise location. Scentless creatures (constructs, some undead, oozes) give nothing away at all.

*Antenna Probe (close-range precision, risk/reward)*
- As a bonus action, extend antennae to get full precise information on one creature/object within 5 ft. (one body length) — resolves any "vague" or "scent-only" read into certainty.
- Risk: probing something you haven't already precisely located (e.g., a flying creature you only smell) provokes a free reaction attack from it — you're reaching blind into range. Creates a constant tactical choice: advance and confirm, or hold back and act on inference.

*Vestigial photoreceptors*: light/dark awareness only, no shapes; effectively blind for all sight-based tasks.

*Sunlight Sensitivity*: disadvantage on attacks and other-sense-based Perception checks in direct sunlight (photoreceptor overload/glare, not blindness).

#note[
  A flat 30 ft. blindsight would have quietly undersold everything else built into this race, and it would have made flying/ungrounded threats a non-issue rather than a real weakness. The three-tier split — precise near, vague far, risky-but-certain point-blank — was designed so the character is never fully blind and never fully safe, with a constant micro-decision every round: advance and confirm, or hold back and act on inference. That's meant to be a genuinely distinct playstyle, not a reskinned Truesight.
]

== Communication

- *Pherologue*: a chemo-tactile "first language," antenna-to-antenna, close range only. Biologically impossible for non-antennae species to learn or perceive.
- *Seismologue*: a secondary tap/scratch vibration language, usable at distance through solid surfaces (rock, floors, walls). Because it's inherently discrete/digital (unlike the chemical language), it's also the basis of their *writing system* — words are physically encoded as grooves/notches (frozen taps), read by dragging an antenna across the surface. Non-linear scripts (spirals, tunnel-shaped) are plausible given their spatial culture.
- Cannot produce or perceive spoken Common or other airborne language without external help.

#note[
  Why does the tap-language become writing and not the chemical one? Pherologue is fundamentally *continuous* — pheromone gradients blend and decay, touch pressure varies smoothly — so it resists being frozen into discrete, repeatable symbols. Seismologue is already built from discrete pulses, a tap either happens or it doesn't, so it survives the jump from time into permanent space the way spoken phonemes survive the jump into our alphabet. In-world, this is exactly the kind of thing a dwarven scholar-philosopher could write a treatise on: "why we do not write scent."
]

== Society & Culture

*Clan-holds, not cities.* Because Pherologue only works antenna-to-antenna at close range, Oniscian social bonds are necessarily physical and tight-knit — a "clan-hold" is a cluster of connected chambers where kin live close enough to touch daily, not a sprawling city of strangers. Larger settlements exist, but function more like several clan-holds sharing tunnel infrastructure (forges, mine shafts, water) than a single unified populace — trust and true intimacy stop at the edge of who you've physically touched. An Oniscian among strangers, even other Oniscians from a different hold, is in a real sense among foreigners until proximity and time build a bond.

*The Nomostele (memory-as-law).* This is the institution that makes them read as _dwarves_ rather than just "well-designed cave invertebrates." Every clan-hold maintains a *Nomostele* — a stretch of stone near the hearth-chamber where wrongs, debts, oaths, and grievances are physically notched in Seismologue, carved to last. A debt unpaid, a kinsman betrayed, an oath broken: it goes on the wall, permanently, in the same medium as their writing and their history. Nothing is forgotten because nothing _can_ be — the notch is stone, not memory, and stone doesn't fade or get misremembered. Reading the wall before certain rites (coming of age, marriage, taking on an apprentice, leaving for the surface) is a Pherologue social obligation: you run your antennae over your family's notches so you carry the ledger with you, even into a world that can't read it. A grudge against an individual can pass down for generations exactly the way a dwarven grudge might in more familiar fantasy — the difference is it's not oral legend, it's a literal, sensable, unforgeable groove in the rock, which makes it very hard to talk your way out of and very easy for a DM to use as a plot hook ("the wall in your home-hold still bears your grandmother's debt to the humans who never came back").

*Explicit theme — permanence-lovers punished by an impermanent world.* Classic dwarves resist change and suffer for the resistance (hoarding, isolationism, grudges that calcify into ruin). Oniscians invert the mechanism but land on the same wound: everything about them — their writing, their law, their sense of identity — is built on the idea that some things should be _permanent and unchangeable_, carved once and true forever. The surface breaks that premise immediately. Up there, nothing stays notched: sound doesn't hold still to be read, meaning has to be caught in real time and lost again, a prosthesis fails in the rain, comprehension has to be painstakingly rebuilt session by session instead of being carved once and settled. Their tragic flaw isn't stubbornness — it's that they've built an entire civilization on permanence, and the overground world simply does not hold still long enough for them to carve anything into it.

#note[
  This theme was the one gap flagged in an early review of the design: the biology was airtight but the document was silent on what these creatures *value*, which is the thing that makes a race read as "dwarf" rather than "grimlock with better PR." The Nomostele closes that loop directly — it's a grudge system carved into the same medium as their writing, so it's unforgeable in a way an oral legend never is. And stating the tragic-flaw parallel outright, rather than leaving it implicit, matters at the table: without it, a player's slow, halting surface-adaptation could easily read as just a disability mechanic instead of landing as *the* dwarvish flaw reinvented in alien form.
]

== Magic & Communication

*Telepathy is the one clean workaround — and it's precious to them because of it.* Mind-to-mind magic (an innate telepathy trait, _Rary's Telepathic Bond_, the _Telepathy_ spell, _Sending_) transmits thought directly, bypassing every sense entirely — no tremorsense, no antennae, no ears. The standard rule for these effects is that the target doesn't need to share your language, only to understand _some_ language of its own for the meaning to land — and since Seismologue and Pherologue both count, an Oniscian clears that bar easily. A human wizard with the right spell could hold a full, fluent conversation with an Oniscian with no translator and no prosthesis at all.

That makes telepathy-granting magic disproportionately valuable to this species — arguably a treasured relic rather than a curiosity, since it's the only known method giving them unmediated, full-fidelity contact with a surface-dweller. Good adventure/quest-reward material.

*What it doesn't replicate*: telepathy conveys the _meaning_ of words, not the sensory experience of Pherologue itself — the antenna-contact, the pheromone nuance. Even perfect telepathic fluency with a human would still feel like talking through glass compared to talking with kin.

*Comprehend Languages / Tongues*, by contrast, are keyed to spoken or written language and likely wouldn't crack Seismologue or Pherologue without a specific DM ruling — worth deciding at session zero whether Seismologue (vibration through stone rather than sound through air) counts as "spoken" for that spell's purposes.

#note[
  Telepathy bypassing sensory modality entirely is a real 5e rules quirk worth exploiting deliberately here — it turns a niche spell into a culturally load-bearing item for this species specifically. It's also a nice safety valve: it preserves Pherologue's untranslatable intimacy (telepathy conveys meaning, never the chemical experience itself) even in a setting saturated with magic that could otherwise trivialize the whole sensory-isolation premise.
]

== Diet & Metabolism

*Omnivorous, but ectothermic — and that changes the whole economics of eating.* As cold-blooded invertebrates, Oniscians don't burn calories generating their own body heat, and likely run a lower baseline metabolism than a similarly-sized mammal to begin with. The upshot: they need dramatically less food than a human of comparable size, and can go long stretches — plausibly days at a time — between meals without harm.

*What they eat.* Real caves have no sunlight to power a food web, so their diet is built on the two things that actually work underground:
- *Cultivated chemosynthetic mats* — bacteria grown in warm, mineral-rich seep chambers, their equivalent of a wheat field. Raw mat is mildly toxic; cooking (fire, already in hand) is what makes it safely edible, so cooking isn't decorative, it's a survival step.
- *Fungiculture on imported detritus* — mushrooms and molds grown on guano, driftwood, and leaf litter washed or blown in from the surface; their "vegetable" tier.
- *Cave livestock*: blind fish, cave shrimp/crayfish, cave crickets, farmed or trapped, plus bat-roosts kept for guano (fertilizer) and occasionally meat.
- *Minerals eaten directly* — geophagy, using the same antennae-taste already used for ore-prospecting; sometimes "checking a vein" and "having a snack" are the same motion.
- *Surface imports* (grain, dried fruit, preserved meat) as rare luxury goods, valued the way salt or spice once was for real inland trade routes — precious specifically because, unlike everything else on this list, they spoil.

*Food as ceremony, not routine.* If a single meal can sustain someone for the better part of a week, eating stops being a daily habit and becomes an _event_. A clan-hold might genuinely gather only once a week (or less) for a full communal meal, and that gathering becomes the natural venue for reading the Nomostele aloud, swearing oaths, binding an apprentice, settling a debt in front of witnesses — food, law, and family all collapsed into the same rare occasion, rather than three separate institutions.

#note[
  The real-world model here is Movile Cave in Romania, an ecosystem that runs entirely on chemosynthetic bacterial mats instead of sunlight — that's the actual biological anchor for the "wheat field" analogy, not just a fantasy hand-wave. The ectotherm-metabolism detail was a later refinement that changed the whole tone: it turns "constant famine" into "organized scarcity," which is a much more dignified and playable hardship, and it produced the nicest emergent idea in the whole document almost by accident — a culture where the one big weekly meal is simultaneously dinner, court, and church.
]

== Overground Adaptations — Why They Need a Party

- *Deaf to airborne sound* by default — speech just washes over their exoskeleton with nothing to catch it.
- *Translator option*: a companion who's learned Seismologue can tap a real-time translation directly against the Oniscian's forearm.
- *Sonic Prosthesis*: a crude, homemade mechanical "eardrum" (membrane + horn + stylus against the skin) that converts airborne sound into perceivable vibration. Functional but limited — no directionality, poor in wind/rain, and delivers raw noise rather than meaning; comprehension of actual words is a slow, learnable skill over time (cochlear-implant-style adaptation), a nice long-term character arc hook.
- Scent-tracking still works outdoors, but shifts from underground's precise "stereo" gradient-reading to coarser open-air "casting" (zigzagging across a windborne scent trail, moth-style).
- Balance/orientation sense (if included) works identically above and below ground — genuinely excellent footing on cliffs, rubble, ledges.

#note[
  This section carries an unplanned but real resonance with how deaf and blind people actually describe adapting to a hearing/sighted-default world — the prosthesis working, but crudely, and adaptation being ongoing labor rather than a problem solved once. That wasn't the design goal going in; it fell out naturally from taking the biology seriously. The one deliberate rule adopted from that resemblance: never let the prosthesis get a magic upgrade that resolves the arc. Keep it crude forever, and let comprehension plateau short of perfect — that's both more respectful and better game design, since it keeps the party dynamic mechanically relevant for the whole campaign instead of a Session 1 gimmick to outgrow.
]

== Proposed 5e Racial Traits

- *ASI*: Str +2, Con +1
- *Size*: Medium; treated as one size larger for carrying/lifting (Powerful Build)
- *Speed*: 25 ft. (30 ft. underground/in contact with stone on 2+ sides, plus advantage on initiative in that terrain — "Tunnel Fighter")
- *Tremorsense*: as tiered above (replaces darkvision — no darkvision)
- *Scent*: as above
- *Antenna Probe*: bonus action, as above
- *No Airborne Hearing*: auto-fail hearing-based checks unless via solid-surface contact or a Sonic Prosthesis (disadvantage on hearing checks, disadvantage on locating sound direction)
- *Vestigial Sight*: light/dark only; effectively blind otherwise
- *Sunlight Sensitivity*
- *Many-Limbed (flavor only, no mechanical benefit)*: four pairs of thin, dexterous, finger-like upper limbs — closer in function to fingers than to separate arms. A two-handed weapon or heavy tool realistically requires most or all of them working together; a single pair alone is precise but not strong. Fine for roleplay and physical description, but doesn't grant extra attacks, extra held items, or grapple/disarm advantage — the strength budget is the same as any other Medium creature, just distributed differently.
- *Stonecunning*: double proficiency on History checks about stonework
- *Languages*: Seismologue (tap/vibration) and Pherologue (touch/chemical, only usable with others who share the trait); no spoken languages without a translator/prosthesis

#note[
  Many-Limbed originally granted extra held weapons and advantage against grapples/disarms — it got walked back to pure flavor on reflection that these are skinny arthropod limbs, functionally closer to fingers than arms, and a creature like that plausibly needs *most or all* of them just to manage a single two-handed weapon. Mechanically generous "extra limbs" traits are an easy trap in homebrew design; this is a case where the honest biological read produced the more balanced ruling anyway.
]

== Class Notes

No class is off-limits. Highlights:
- *Barbarian / Fighter / Monk*: strong physical fit — Str +2/Con +1 and Powerful Build support a heavy melee build; the multi-limbed grip is flavor (bracing a weapon with all eight limbs for a mighty swing) rather than a mechanical bonus.
- *Rogue*: powerful underground (tremorsense counters stealth), but sharply limited for surface eavesdropping/sight-based stealth — good built-in roleplay tension.
- *Ranger*: reflavor tracking as scent-casting rather than sight.
- *Casters (Wizard / Sorcerer / Cleric / Druid)*: no mechanical obstacle — verbal components reflavored as self-generated taps/vibrations, spellbooks as grooved tactile pages.
- *Bard*: fun reflavor as a felt/drummed performance that needs translation for non-Seismologue audiences.

== DM Discussion Points

- Tremorsense's range/tiering is intentionally more generous than a flat 30 ft. blindsight, balanced by the total blindness to ungrounded threats — worth a session-zero conversation about how flying/ship-deck/rope-bridge encounters will be handled so it isn't an accidental soft-lock either direction.
- Sonic Prosthesis is a piece of gear, not a trait — fragile (AC 10, 1 hp), fails in bad weather, delivers noise rather than words at first. Recommend treating "understanding" surface speech through it as a slow narrative/downtime progression rather than an instant fix.
- The Nomostele is a good built-in backstory generator: worth asking the player whether their character left the clan-hold with a debt still open, a grudge inherited but not their own, or an oath the party's mission might let them finally close out.

#pagebreak()

= Appendix: Art & Culture

_Not required for character-building, but useful flavor for roleplay and worldbuilding — included here rather than in the core pitch since it goes beyond what a DM strictly needs to approve the race._

- *Sculpture*: survives closest to unchanged, but shifts from a distance art to a contact one — meant to be touched, not viewed, so repeated handling by generations of antennae becomes part of the work, the way a cathedral saint's foot is worn shiny by pilgrims.
- *Drawing*: done in pastes of differing mineral composition, read by antenna taste/texture rather than sight — palette organized by mineral family, not hue, so a "masterpiece" could sit in a human museum dismissed as a drab grey smear.
- *Literature/poetry*: closest to unchanged conceptually, since it's built on the already-writable Seismologue — though the line between "poem" and "drumbeat" may not exist for them at all.
- *Music*: vibration-based, blending percussion and "lyric" into one channel, effectively imperceptible to unaided humans — built on different acoustic physics than air, so their music theory would be mathematically unrelated to ours, not just differently tuned.
- *Theater*: plausible, built on Seismologue and tremorsense; a more intimate form with performers within antennae-reach of the audience likely sits at or past the edge of social propriety.
- *Architecture*: arguably the art form most reshaped by their senses — a hall's beauty judged by how a tap resonates through it, the way a cathedral's beauty is judged by light. Structural engineering and aesthetic judgment might be nearly the same skill for them.
- *Scent-composition*: a wholly new, genuinely untranslatable art form built on Pherologue — not merely undecoded by outsiders, but structurally impossible for a human to ever perceive even in principle. Likely sacred and private, never exported.
- *Dance*: reframed as a stamping, rhythmic performance felt through the floor by an audience in contact with the ground — dance, music, and shared tremorsense at once.

#note[
  This section is the clearest illustration of the whole design method: rather than asking "what would dwarven art look like," each art form was checked against which sense it depends on, and let the answer fall out from there. Distance-senses (sight, hearing-through-air) either vanish or transform beyond recognition; contact/vibration/chemical senses survive close to intact, or intensify into something richer than the human original. Scent-composition earns its place as the one deliberately unknowable art form — not a translation problem, a hardware problem, the same way describing color to someone born without sight runs out of road no matter how good the metaphor.
]
