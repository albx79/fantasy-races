#set page(paper: "a4", margin: (x: 2.3cm, y: 2.4cm), numbering: "1")
#set text(font: "Latin Modern Roman", size: 10.5pt, lang: "en")
#set par(justify: true, leading: 0.62em, spacing: 1.1em)
#set heading(numbering: (..nums) => {
  let n = nums.pos()
  if nums.len() == 1 {
    [Part #numbering("I", n.at(0)) — ]
  } else {
    numbering("I.1", ..n)
  }
} )

#show heading.where(level: 1): it => block(width: 100%)[
    #v(0.6em)
    #block(
      text(font: "Latin Modern Sans", size: 15pt, weight: "bold", fill: rgb("#3d2f1f"),
        if it.numbering == none {""}
        else { counter(heading).display(it.numbering) } + " " + it.body
      )
    )
    #line(length: 100%, stroke: 0.6pt + rgb("#8a6d3b"))
    #v(0.2em)
  ]

#show heading.where(level: 2): it => [
  #v(0.5em)
  #block(
    text(font: "Latin Modern Sans", size: 11.5pt, weight: "bold", fill: rgb("#5c4630"),
      if it.numbering == none {""}
      else { counter(heading).display(it.numbering) } + " " + it.body
    )
  )
  #v(0.1em)
]

#let part(title, body, preamble: none) = {
  heading(level: 1)[#title]
  if preamble != none {
      block(width: 100%, preamble)
  }
  columns(balanced: true, 2, body)
}

// Title block
#align(center)[
  #text(font: "Latin Modern Sans", size: 22pt, weight: "bold", fill: rgb("#3d2f1f"))[The Oniscians]
  #v(-0.3em)
  #text(font: "Latin Modern Sans", size: 12pt, fill: rgb("#5c4630"))[A Homebrew Player Race — with Designer's Notes]
  #v(0.4em)
  #line(length: 40%, stroke: 0.6pt + rgb("#9a7b45"))
]

#v(0.3em)
#emph[A pillworm-like, invertebrate, subterranean tool-using species. Built as an alternative to traditional "short human" dwarves — no vision, no spoken language, and a profoundly different way of experiencing the world both underground and on the surface.]

#part[Preamble][

== The Oniscians at a Glance

The Oniscians are a pillworm-like, invertebrate, subterranean tool-using species designed as an alternative to the traditional "short human" dwarf.

They retain the cultural core of the dwarf archetype — stonework, permanence, craft, memory, clan, and grudges — while discarding the familiar humanoid body and rebuilding the species from invertebrate biology.

They are:

- roughly 1.5 m tall with a segmented and pillworm-like body and a chitinous exoskeleton;
- effectively blind, and deaf to airborne sound;
- capable of sensing mechanical disturbances through connected solid surfaces;
- capable of chemical and tactile sensing through mobile antennae;
- speakers of a close-range chemo-tactile language called *Pherologue*;
- users of a vibration language called *Seismologue*, which also forms the basis of their writing;
- organized primarily into close-knit clan-holds rather than sprawling cities;
- culturally obsessed with permanence, memory, stone, and physical records;
- adapted to a subterranean ecology based on chemosynthesis, fungi, cave livestock, and imported surface material;
- poorly adapted to the sensory assumptions of the surface world.

The result is a species whose physical alienness is not cosmetic.
Their anatomy changes how they perceive the world, which changes how they communicate, which changes how they organize society, which changes what they value.

== Core Identity

The central design question behind the Oniscians is:

#quote[*What happens if the cultural identity of a dwarf survives, but the humanoid dwarf body does not?*]

The Oniscians are therefore not intended to be "dwarves with a funny appearance."
Their biology has consequences for all aspects of life, including perception, communication, architecture, social relationships, writing, law, art, food, and trade.

Their central cultural tension is the relationship between permanence and change.
Everything about traditional Oniscian civilization is built around the assumption that important things should be made permanent: memories, laws, debts, oaths and history are all carved into hard stone.

The surface world does not cooperate with this assumption.
Sound disappears as soon as it is produced. Meaning must be exchanged in real time. A prosthesis can fail. A conversation must be reconstructed rather than preserved in stone.

The Oniscians therefore reproduce the central wound of the dwarf archetype without simply copying dwarven aesthetics:

*They have built a civilization around permanence, but the wider world refuses to hold still.*

== Settings Neutrality

The Oniscians are designed as a *settings-neutral playable species*.

Nothing essential to their biology, ecology, communication, or culture depends on magic or speculative technology.

Their subterranean adaptations are biological or cultural solutions rather than supernatural abilities.

They do not require:

- magical senses (darkvision, tremorsense);
- magically conjured food or underground ecosystems;
- a supernatural anatomy;
- magical communication;
- any particular cosmology.

The species should therefore be able to exist naturally in settings ranging from high/low fantasy to hard science fiction, with anything in between, as long as they allow for a speculative sentient species.

Magic, advanced technology, or other setting-specific phenomena may provide *additional* ways of interacting with the species, but these are optional overlays rather than foundations.

== How This Document Is Organized

This document separates three different levels of description.

*Biology & Culture* describes what the Oniscians are within the fictional world. It treats their anatomy, senses, communication, society, ecology, and culture as an encyclopedic subject and avoids game mechanics and narrative advice.

*Storytelling* describes what those characteristics mean for a playable character, campaign, or game system. This is where the 5e racial template, encounter implications, narrative hooks, and setting-specific magical solutions can be found.

*Designer's Notes* explain why particular decisions were made during the design process. These notes are deliberately separated from the species description so that the main text can be read as an in-world description of the finished species.
]

#part[Biology & Culture][

== Body Plan

The Oniscians are roughly 1.5 m tall and possess a segmented, isopod/pillworm-like body plan with a chitinous exoskeleton.

Their bodies are divided broadly into:

- multiple lower limbs specialized for locomotion;
- four pairs of upper limbs specialized for manipulation;
- a compact central body;
- a sensory head or mast containing their principal sensory structures.

== Lower Limbs

The lower limbs consist of multiple pairs dedicated primarily to locomotion.

They provide the broad base of support necessary for a body plan that differs substantially from the human upright bipedal form.

== Upper Limbs

The upper limbs consist of four pairs of thin, arthropod-like limbs.

They are closer in function to fingers than to separate human-style arms.

A single pair is dexterous and precise, making it suitable for fine manipulation, delicate work, tactile exploration, and tool use.

The limbs are individually weak.
Tasks requiring substantial force are therefore normally performed by coordinating several pairs simultaneously.

The unusual number of limbs is consequently not equivalent to possessing several independent human arms.

== Head

The head is a chitinous hemisphere with a small mandible, five antennae twice as long as the body itself, and several oculi. It is completely incapable of facial expressions.

The oculi are vestigial photoreceptors capable of distinguishing light from darkness, but incapable of forming images.

The antennae are like a blind person's white stick and index finger merged into one, and much more. They are used for smell, taste, and tactile reception, and will be explained in more details in @sensors.

They are also capable of  lightweight actuation (move or grab small objects with about the strength and dexterity of a human finger), and are the primary organs through which Pherologue is perceived and produced.

== Airborne Hearing

Oniscians possess no ears capable of functioning as conventional human-style auditory organs.

Airborne sound therefore does not provide them with an ordinary sense of hearing.

Their primary environmental perception instead relies on mechanical disturbances transmitted through solid surfaces and chemical information carried through the environment.

== Locomotion

The Oniscians' body plan favors stability and controlled movement rather than humanoid agility.

Their multiple locomotor limbs distribute weight across a broad support area and are particularly well suited to uneven subterranean terrain.

Their physical architecture is adapted to walking on uneven ground (stone floors, rubble), negotiating narrow passages, and climbing and traversing subterranean infrastructure.

== Sensory Biology <sensors>

The Oniscian sensory system is based on several complementary modalities rather than a single replacement for vision.

Its most important environmental sense is the detection of mechanical disturbances transmitted through connected solid material.

Chemical sensing supplements this system when objects or organisms are not connected to the same solid substrate, or the substrate is too soft to transmit vibrations.

The antennae ends provide high-resolution tactile information at very close range.

=== Substrate Mechanosensation

Oniscians are capable of detecting mechanical disturbances transmitted through connected solid surfaces.

A disturbance may be generated by:

- footsteps;
- impacts;
- digging;
- machinery;
- falling objects;
- structural movement;
- other forms of force transmitted through stone, earth, wood, or other connected material.

Sensitivity decreases with distance.

Close disturbances can be localized with considerable precision, while distant disturbances provide progressively less information.

Very large events can remain detectable at considerable distances as broad environmental disturbances.

The sensory system is therefore fundamentally relational: an Oniscian does not simply "sense a creature at a distance," but perceives mechanical information propagated through a connected substrate.

=== Chemical Sensing

The antennae are highly sensitive to chemical information carried through the environment.

Chemical sensing is especially important for detecting things that are not in contact with the same solid surface.

Flying, swimming, or otherwise ungrounded organisms may therefore remain detectable through chemical traces even when substrate mechanosensation provides no information.

Chemical information is affected by environmental conditions such as wind and does not normally provide the same precision as direct substrate contact.

Scentless organisms and objects that do not produce meaningful chemical signatures may be undetectable through this modality.

=== Close-Range Antenna Sensing

At very close range, the antennae can physically investigate an object or organism.

This allows the Oniscian to resolve information that is otherwise uncertain.

Close-range investigation may involve:

- direct tactile contact;
- chemical sampling;
- fine positional sensing;
- detailed identification of nearby surfaces.

The antennae are consequently both sensory organs and important tools for interacting with the environment.

=== Vision

The vestigial photoreceptors provide light/dark awareness at 360 degrees, but do not provide meaningful visual information.

An Oniscian therefore cannot naturally perceive shapes and colors.
Human facial expressions are as alien to them as pheromone signals are to us.

Their world is instead constructed from mechanical, chemical, tactile, and other non-visual information.

Direct sunlight can overwhelm these primitive photoreceptive structures, producing a condition analogous to glare or sensory overload.
This makes bright surface environments physiologically uncomfortable, which is why Oniscians usually cover their head with a hood when venturing outdoors during daylight.

== Communication

Oniscian communication consists of two fundamentally different natural languages.

*Pherologue* is an intimate chemo-tactile language transmitted at close range through the antennae.

*Seismologue* is a vibration language transmitted through solid surfaces and capable of functioning over greater distances.

The two systems are not merely dialects of the same language. They exploit fundamentally different sensory channels.

=== Pherologue

*Pherologue* is the Oniscians' primary close-range language.

It combines chemical and tactile information transmitted directly between antennae.

The language depends upon sensory structures that non-Oniscians do not possess.

A human or other species without compatible antennae therefore cannot naturally perceive Pherologue.

Pherologue is consequently both a language and a form of physical intimacy.

=== Seismologue

*Seismologue* is a tap and scratch language transmitted through solid surfaces.

A message can be produced by striking, tapping, scraping, or otherwise mechanically disturbing a connected surface.

The language can therefore function:

- across rooms;
- through walls;
- along floors;
- through tunnels;
- across other connected solid structures.

Seismologue is more discrete than Pherologue.

A tap is a discrete event, while chemical gradients and tactile pressure can vary continuously.

This makes Seismologue naturally suited to permanent written representation.

=== Writing

Oniscian writing consists of grooves, notches, scratches, and other physical modifications to surfaces.

The marks represent Seismologue pulses in a permanent medium.

An Oniscian reads such writing by moving an antenna across the surface and interpreting the resulting tactile information.

Because the script is not constrained by visual conventions, it can take non-linear forms.

Spiral, branching, tunnel-like, and spatially organized scripts are all possible.

Stone is particularly important because it provides a durable medium that can preserve information for generations.

=== Spoken Languages

Oniscians cannot naturally perceive ordinary airborne speech.

They likewise cannot naturally produce human-style spoken language through a conventional vocal apparatus.

Communication with airborne-speaking species therefore requires some intermediary technology, learned translation system, compatible magic, or other external solution.

== Social Organization

=== Clan-Holds

Oniscian society is organized primarily around *clan-holds* rather than cities in the conventional human sense.

A clan-hold is a cluster of connected chambers in which related individuals live in close proximity.

The physical arrangement of the hold reflects the requirements of Pherologue.

Because their most intimate language requires antenna-to-antenna contact, social bonds are reinforced by physical closeness.

Large settlements may contain multiple clan-holds sharing infrastructure such as:

- forges;
- mine shafts;
- water systems;
- storage chambers;
- workshops;
- communal spaces.

Such settlements are therefore better understood as networks of closely bonded communities than as single homogeneous cities.

=== Kinship and Proximity

Physical contact has unusual social importance.

An Oniscian from a distant hold may share ancestry, language, and broad cultural identity with another Oniscian while nevertheless remaining socially unfamiliar.

True intimacy develops through repeated physical proximity and communication.

The distinction between kin, familiar strangers, and foreigners is therefore influenced by the physical structure of Oniscian communication.

=== The Nomostele

Every clan-hold maintains a *Nomostele* — a stretch of stone near the hearth-chamber on which important social information is permanently recorded.

The Nomostele may contain:

- debts;
- wrongs;
- oaths;
- grievances;
- obligations;
- historical events;
- other information considered important enough to preserve.

The records are carved in Seismologue.

The stone therefore serves simultaneously as:

- legal record;
- historical archive;
- family memory;
- social ledger.

The permanence of the record is culturally significant.

A debt recorded on the Nomostele does not depend upon an individual's memory, and an oath carved into stone does not disappear merely because the people who witnessed it have died.

=== Rites of Reading

The Nomostele is not merely an archive.

Certain major life events involve physically reading the family's records.

These may include:

- coming of age;
- marriage;
- taking an apprentice;
- leaving the clan-hold;
- other significant transitions.

The individual runs their antennae over the family's records, experiencing the history physically rather than merely hearing it recited.

A person leaving for the surface may therefore carry their family's obligations with them even when the wider world cannot perceive or understand the records.

== Food & Metabolism

Oniscians are omnivorous and ectothermic.

Because they do not generate large amounts of body heat internally, their baseline metabolic requirements are lower than those of a similarly sized endothermic mammal.

They therefore require substantially less food than a human of comparable size and can potentially survive for several days between substantial meals.

=== Underground Food Webs

The Oniscian subterranean food economy is based on organisms and processes capable of functioning without direct sunlight.

Their major food sources include:

- *cultivated chemosynthetic mats* — bacteria grown in warm, mineral-rich seep chambers;
- *fungiculture on imported detritus* — mushrooms and molds cultivated on guano, driftwood, leaf litter, and similar material;
- *cave livestock* — blind fish, cave shrimp/crayfish, cave crickets, and other subterranean organisms;
- *bat-roosts* — maintained partly for guano as fertilizer and sometimes for meat;
- *minerals* — consumed directly through geophagy;
- *surface imports* — grain, dried fruit, preserved meat, and other materials unavailable or difficult to produce underground.

Chemosynthetic bacterial mats occupy a cultural role analogous to staple crops.

The raw material may be mildly toxic and requires cooking before it is safely consumed.

Cooking is therefore a practical survival technology rather than merely a culinary tradition.

=== Mineral Consumption

Oniscians can consume certain mineral materials directly.

The same chemical and tactile sensory systems used to investigate geological material can therefore overlap with feeding behavior.

An individual may sometimes investigate a mineral vein and consume part of the material as part of the same exploratory action.

=== Surface Food

Food imported from the surface is unusual because it introduces perishability into a culture otherwise accustomed to long-lived subterranean resources.

Grain, dried fruit, preserved meat, and similar goods can therefore acquire value as luxury or trade commodities.

Their scarcity is partly a consequence of their inability to be produced locally and partly a consequence of their tendency to spoil.

=== Communal Meals

Because Oniscians require relatively little food and can go for long periods between meals, eating need not be a daily communal activity.

Large communal meals can instead become periodic social events.

Such gatherings naturally provide occasions for:

- family interaction;
- reading from the Nomostele;
- swearing oaths;
- settling debts;
- binding apprentices;
- conducting other ceremonies.

Food, law, and kinship therefore overlap in Oniscian social life.

== Material Culture & the Arts

Oniscian material culture is strongly shaped by the senses through which they perceive the world.

Objects intended primarily for visual appreciation have little meaning in their native context.

Objects designed to be touched, vibrated, smelled, tasted, or physically explored can become highly sophisticated.

=== Sculpture

Sculpture is primarily a tactile art.

Works are designed to be explored through repeated physical contact rather than viewed from a distance.

The surfaces of important sculptures may therefore change through generations of handling.

Repeated contact becomes part of the history of the artwork.

=== Drawing

Visual drawing is replaced or supplemented by compositions made from materials with different tactile and chemical properties.

Pastes of differing mineral composition can be arranged so that their texture and taste provide information to the antennae.

Their "palette" is therefore organized around material and mineral distinctions rather than visual hue.

A work considered a masterpiece by Oniscians might appear to a human observer as little more than a drab grey smear.

=== Literature and Poetry

Literature and poetry are built naturally around Seismologue.

Because the language is already represented through physical marks, written literature is an ordinary part of Oniscian culture.

The distinction between poetry and rhythm may be less pronounced than in human cultures.

=== Music

Oniscian music is primarily vibration-based.

Rather than relying on airborne sound, performances transmit rhythmic and melodic information through physical structures and connected surfaces.

Music may therefore be largely or entirely imperceptible to unaided humans.

Its acoustic theory would develop from different physical principles than ordinary human air-based music.

=== Theater

Theater can be built around Seismologue, vibration, movement, and close-range tactile communication.

Performances may be unusually intimate by human standards, with performers and audiences occupying connected spaces through which vibration can be transmitted.

Performers moving into antenna-reach of an audience may carry significant social implications.

=== Architecture

Architecture is simultaneously engineering and sensory art.

A hall can be judged by the way vibrations propagate through its structure.

Structural design, resonance, material choice, and aesthetic judgment can therefore become closely related disciplines.

A building's beauty may be experienced through the pattern of vibrations produced by a tap just as a human might judge a cathedral by the way its architecture frames light.

=== Scent-Composition

*Scent-composition* is an art form with no true human equivalent.

It uses chemical information and pheromonal communication to produce deliberate sensory compositions.

To a human, such a work is not merely undeciphered.

It is structurally inaccessible.

The human sensory system lacks the necessary modality entirely.

Scent-composition is therefore likely to remain an especially private, sacred, or intimate art form.

=== Dance

Oniscian dance can be based around stamping and rhythmic movement transmitted through the ground.

An audience standing on the same connected surface can perceive the performance through shared substrate mechanosensation.

Dance, music, and collective sensory experience can therefore become aspects of the same artistic event.

== Life Beyond the Subterranean Environment

The Oniscians are adapted primarily to environments in which solid surfaces provide continuous mechanical information and where their communication systems function naturally.

The surface does not necessarily disable their biology, but it changes the informational environment dramatically.

=== Open Air

Airborne sound remains inaccessible through ordinary hearing.

Chemical information becomes more strongly affected by wind and other atmospheric movement.

Scent trails that can be interpreted relatively precisely in enclosed subterranean spaces become more diffuse and difficult to localize outdoors.

=== Discontinuous Substrates

The sensory value of solid surfaces depends on mechanical continuity.

Broken terrain, open gaps, unstable structures, water, rope bridges, and other discontinuities can interfere with the transmission of mechanical information.

The Oniscian sensory world is therefore strongly influenced by the physical architecture of its surroundings.

=== Surface Communication

The fundamental difficulty of life among airborne-speaking species is not simply linguistic.

The communication channels themselves are incompatible.

A human speaks through air.

An Oniscian naturally communicates through chemical contact or vibration through solid material.

Successful interaction therefore requires the creation of a bridge between sensory systems.
]

#part[Storytelling][

== Playing an Oniscian

An Oniscian Player Character should feel profoundly different from a conventional humanoid PC without becoming impossible to use in ordinary adventures.

The most important character-facing consequences are:

- a radically different sensory experience;
- inability to see normally;
- inability to hear ordinary speech;
- reliance on solid surfaces for precise environmental perception;
- reliance on scent for some ungrounded threats;
- intimate communication through Pherologue;
- physical communication through Seismologue;
- strong cultural attachment to permanence and physical records;
- significant adaptation challenges when interacting with surface-dwelling peoples.

The goal is not to make the character permanently helpless.

The goal is to give the player a different way of understanding and interacting with the world.

== Translating the Biology into 5e

The biological sensory system should be distinguished from its mechanical representation.

The fictional species possesses *substrate mechanosensation*.

5e represents that ability using *tremorsense*.

The fictional species possesses chemical sensing.

5e represents that ability using a simplified *scent* mechanic.

The fictional species possesses close-range antenna-based investigation.

5e represents that ability through *Antenna Probe*.

These mechanical abstractions should not be mistaken for descriptions of the underlying biology.

== Proposed 5e Racial Traits

- *ASI*: Str +2, Con +1
- *Size*: Medium; treated as one size larger for carrying/lifting (Powerful Build)
- *Speed*: 25 ft. (30 ft. underground/in contact with stone on 2+ sides, plus advantage on initiative in that terrain — "Tunnel Fighter")
- *Tremorsense*: as described below
- *Scent*: as described below
- *Antenna Probe*: bonus action, as described below
- *No Airborne Hearing*: auto-fail hearing-based checks unless via solid-surface contact or a Sonic Prosthesis (disadvantage on hearing checks, disadvantage on locating sound direction)
- *Vestigial Sight*: light/dark only; effectively blind otherwise
- *Stonecunning*: double proficiency on History checks about stonework
- *Languages*: Seismologue (tap/vibration) and Pherologue (touch/chemical, only usable with others who share the trait); no spoken languages without a translator/prosthesis

== Tremorsense

For 5e purposes, the Oniscian's substrate mechanosensation is represented as tiered tremorsense.

- *0–60 ft.*: Precise. Anything in contact with the ground/a connected solid surface is located exactly.
- *61–120 ft.*: Vague. General direction and rough distance only, for creatures Medium+ or moving forcefully; disadvantage on attacks based only on this; small/stealthy movement doesn't register.
- *120+ ft.*: Only very large-scale events (explosions, collapses) register, as a "something happened, that direction" cue.

This is intentionally not equivalent to a conventional flat-radius blindsight.

== Scent

Flying, waterborne, or otherwise non-grounded creatures are invisible to tremorsense but detectable by antenna-scent within ~30 ft. (wind-affected).

Scent tells you *presence* and a rough bearing only — never precise location.

Scentless creatures (constructs, some undead, oozes) give nothing away at all.

== Antenna Probe

As a bonus action, extend antennae to get full precise information on one creature/object within 10 ft. (two body lengths) — resolving any "vague" or "scent-only" read into certainty.

Probing something that has not already been precisely located — for example, a flying creature that has only been detected through scent — provokes a free reaction attack from it.

This produces a deliberate tactical choice:

*Advance and confirm the enemy position, or hold back and act on inference.*

== No Airborne Hearing

An Oniscian cannot naturally hear ordinary airborne sound.

They automatically fail hearing-based checks unless they have access to:

- solid-surface contact;
- an appropriate translator;
- a Sonic Prosthesis;
- another setting-specific solution.

Even when a mechanical workaround exists, the sensory experience remains different from ordinary human hearing.

== The Party as Communication Infrastructure

An Oniscian adventurer is likely to require some method of communicating with the rest of the party.

Several approaches are possible.

=== Seismologue Translator

A companion who has learned Seismologue can tap a real-time translation directly against the Oniscian's forearm.

This is the simplest non-magical solution.

It also creates an interesting social relationship: one party member may become the Oniscian's primary linguistic bridge to the outside world.

=== Sonic Prosthesis

A *Sonic Prosthesis* is a crude, homemade mechanical "eardrum", available even in low-tech settings:

- membrane;
- horn;
- stylus against the skin.

It converts airborne sound into perceivable vibration.

It is functional but limited:

- no directionality;
- poor performance in wind and rain;
- raw noise rather than immediate linguistic comprehension.

Understanding actual spoken words through the prosthesis should be treated as a slow, learnable skill rather than an instant translation.

The prosthesis is therefore a potential long-term character arc rather than a one-session equipment upgrade.

=== Telepathy

Telepathy is the cleanest magical workaround because it bypasses sensory modality altogether.

Mind-to-mind magic — including an innate telepathy trait, _Rary's Telepathic Bond_, the _Telepathy_ spell, or _Sending_ — can transmit meaning without requiring the Oniscian to hear or see the communication.

A human wizard using appropriate magic can therefore hold a fluent conversation with an Oniscian without a translator or prosthesis.

This makes telepathy-granting magic disproportionately valuable to Oniscians.

It can be treated as:

- a treasured relic;
- a rare diplomatic tool;
- a valuable quest reward;
- a culturally significant technology.

Telepathy does not reproduce the sensory experience of Pherologue.

It communicates meaning, but not the antenna-contact or chemical nuance that makes Pherologue intimate.

Even perfect telepathic communication with a human can therefore feel like talking through glass compared with communicating with kin.

=== Comprehend Languages and Tongues

_Comprehend Languages_ and _Tongues_ are keyed to spoken or written language and may not automatically apply to Seismologue or Pherologue.

Whether Seismologue counts as "spoken" for a particular spell should be decided by the setting or DM.

The important principle is that these spells should be treated as setting-specific solutions rather than assumptions about the underlying species.

== Surface Adaptation as Character Development

The transition from an underground environment to the surface can provide a long-term character arc.

The Oniscian is not simply learning new vocabulary.

They are learning to operate in an environment where:

- sound is inaccessible;
- information arrives through unfamiliar channels;
- solid surfaces may be discontinuous;
- scent behaves differently;
- sunlight produces sensory overload;
- familiar social assumptions about communication do not apply.

A Sonic Prosthesis may improve one problem without solving the others.

The character can therefore become increasingly competent without ever becoming physiologically identical to a human.

The adaptation itself can remain part of the character's identity throughout the campaign.

== The Nomostele as a Story Engine

The Nomostele provides a built-in source of character history.

A player character might leave the clan-hold with:

- an unpaid debt;
- a family grievance;
- an inherited grudge;
- an oath;
- an obligation to an ancestor;
- a record whose meaning is disputed;
- a promise to return and amend the stone.

Because the record is physically permanent, such obligations cannot simply disappear through forgetfulness. The Nomostele cannot be stolen, lost, or faked.

A campaign can therefore make the Nomostele relevant without requiring the character to have an elaborate backstory.

A single unresolved inscription can become a long-term narrative thread.

== Food, Scarcity & Ceremony

The Oniscian food economy can generate stories without making the species defined by famine.

Their low metabolism and subterranean food web produce a different kind of scarcity: organized scarcity.

Potential story elements include:

- a clan-hold whose chemosynthetic mats have failed;
- competition over mineral-rich seep chambers;
- trade in surface grains or preserved meat;
- disputes over access to cave livestock;
- a communal feast interrupted by an emergency;
- a Nomostele reading that takes place during a major meal;
- a surface food becoming unexpectedly important;
- a character discovering that surface food spoils far faster than they expected.

The weekly or otherwise periodic communal meal can function simultaneously as:

- family gathering;
- court;
- ceremony;
- religious or quasi-religious observance;
- political meeting.

== Combat and Encounter Design

The Oniscian sensory system should produce asymmetric encounters rather than universal superiority.

Underground, connected terrain strongly favors them.

The same character can be placed at a disadvantage when:

- enemies fly;
- enemies move through water;
- enemies cross gaps;
- enemies remain on disconnected surfaces;
- the battlefield is dominated by airborne sound;

This creates a distinct sensory playstyle rather than simply giving the character a stronger version of conventional vision.

A useful design principle is:

*The Oniscian should rarely be unable to perceive anything, but should often have to determine what kind of information they can trust.*

== Class Considerations

No class is off-limits.

=== Barbarian / Fighter / Monk

These classes have a strong physical fit.

Str +2/Con +1 and Powerful Build support heavy melee builds.

=== Rogue

Rogues can be powerful underground because tremorsense can counter conventional stealth.

At the same time, they are sharply limited for surface eavesdropping and sight-based stealth.

This produces useful roleplaying tension.

=== Ranger

Tracking can be reflavored as scent-casting rather than sight.

=== Casters

Wizard, Sorcerer, Cleric, and Druid present no fundamental mechanical obstacle.

Verbal components can be reflavored as self-generated taps or vibrations.

Spellbooks can be represented as grooved tactile pages.

=== Bard

A Bard can be reflavored as a vibration-based performer whose music is felt rather than heard.

Performances intended for non-Seismologue audiences may require translation or technological/magical mediation.
However, a GM may rule that a PC unable to perceive the Seismologue performance cannot benefit from its bonus.

== DM Considerations

=== Tremorsense and Terrain

Tremorsense's generous underground range should be balanced by its dependence on connected surfaces.

The DM should establish how the system behaves in unusual environments such as:

- flying encounters;
- ships;
- rope bridges;
- unstable rubble;
- isolated platforms;
- water;
- suspended structures.

The aim is to prevent either extreme:

- making tremorsense irrelevant;
- or allowing it to function as universal omniscience.

=== Sonic Prosthesis

The Sonic Prosthesis is a piece of gear rather than a racial trait.

Suggested properties:

- AC 10;
- 1 hp;
- fragile;
- fails in bad weather;
- delivers noise rather than words at first.

Understanding surface speech through it should be treated as a slow narrative/downtime progression rather than an instant fix.

=== Nomostele Hooks

The Nomostele is particularly useful as a backstory generator.

The DM can ask the player:

- What debt does your character still owe?
- What grudge did you inherit?
- What oath remains unresolved?
- What inscription would your character most like to change?
- What does your family expect you to preserve?

A campaign objective can even intersect with an old Nomostele record.

=== The Party Relationship

The Oniscian works particularly well when the party is treated not merely as a group of adventurers but as part of the character's communication infrastructure.

A companion may learn Seismologue.

Another may help maintain the Sonic Prosthesis.

Another may become the character's guide to surface customs.

These relationships should remain meaningful rather than being replaced immediately by a universal magical solution.
]

#part(preamble: [_These notes explain the reasoning behind the design.
They cover the *why* behind some of the choices made, and lists some options that were considered but have been discarded._])[Designer's Notes][

== The Foundational Design Constraint

The whole project started from one constraint: keep dwarves' *cultural* core — stonework, permanence, craft, memory, clan — but throw out the "short stocky human" body entirely and rebuild the senses from real biology. As an additional constraint, we wanted that biology to be scientifically plausible and workable into any setting, therefore magical attributes like darkvision were automatically excluded.

For this experiment, we also decided to keep the "underdwellers" identity of dwarves. Designing a non-magical, tool-using, sentient species that lives completely underground has been a challenge.
Opening the design to invertebrates, not just non-human mammals, was the key unlock.

Arthropods and mollusks already have real-world precedent for every non-visual sense this species needed, often more elegantly than the mammalian equivalent.

The goal was not simply to make a strange-looking dwarf.

The goal was to let the altered biology generate a different way of experiencing the world and then let that difference propagate naturally into culture.

== Why the Sensory System Works This Way

Vision is evolutionarily cheap and near-universal because light is available almost everywhere, and even a crude photoreceptor pays off immediately — that's why eyes evolved 40+ times independently. However, deep underground, in the absence of light, it's completely useless.

The first alternataive we explored was *echolocation*.
Unlike vision, echolocation is expensive: a dedicated sound emitter, high-resolution hearing, fast neural timing, and specialized processing are all required.

It only pays off where vision fails. And it often fails even there, when sound meets soft surfaces that don't reflect it. That's why it is comparatively rare: bats, toothed whales, oilbirds, swiftlets, a few shrews.

Other lineages facing the same dark-cave problem often evolved something else entirely because they already had a cheaper option on hand.

Weakly electric fish use electroreception, pit vipers use infrared, and fish already have a passive lateral line.

That's the direct precedent for giving the Oniscians *substrate vibration sensing plus chemoreception* instead of echolocation — closer to spider and insect biology than to bat or whale biology.

== Why the Sensory Biology Is Separate from Tremorsense

The fictional species does not literally possess "60 feet of tremorsense."

Feet are a game abstraction.

The biological concept is a sensory system whose resolution changes with distance and with the strength and continuity of mechanical signals transmitted through the substrate.

5e requires that continuous biological reality to be translated into discrete rules.

The tiered tremorsense mechanic is therefore an implementation of the biology rather than part of the biology itself.

Keeping those two descriptions separate is important.

The encyclopedia describes what an Oniscian perceives.
The game rules describe how a player rolls dice when an Oniscian perceives it.

== Why Tremorsense, and Why Tiered Perception

A flat 30 ft. blindsight would have quietly undersold everything else built into this race, and it would have made flying/ungrounded threats a non-issue rather than a real weakness.

The three-tier split — precise near, vague far, risky-but-certain point-blank — was designed so the character is never fully blind and never fully safe.

That creates a constant micro-decision every round: rely on vague hints from mechanoreception, or probe with the antennae to get a precise bearing, but risk injury.

That's meant to be a distinct playstyle, not a reskinned Truesight or Darkvision.

== Why Seismologue Became Writing

Why does the tap-language become writing and not the chemical one?

Pherologue is fundamentally *continuous* — pheromone gradients blend and decay, touch pressure varies smoothly — so it resists being frozen into discrete, repeatable symbols.

Seismologue is already built from discrete pulses.

A tap either happens or it doesn't, so it survives the jump from time into permanent space the way spoken phonemes survive the jump into our alphabet.

In-world, this is exactly the kind of thing a Oniscian scholar-philosopher could write a treatise on:

#quote(attribution: "...--.---, scholar-philosopher", block: true)[Why we do not write scent.]

== Why the Nomostele Matters

In an early version of the design, the biology was airtight but the document was silent on what these creatures *value*, which is the thing that makes a race read as "dwarf" rather than "grimlock with better PR."

The Nomostele fixes that.

It is a grudge system carved into the same medium as their dwellings, so it is unforgeable in a way an oral legend, or even a normal written text, never is.

And stating the tragic-flaw parallel outright, rather than leaving it implicit, matters at the table.

Without it, a player's slow, halting surface-adaptation could easily read as just a disability mechanic instead of landing as *the* dwarvish flaw reinvented in alien form.

== Why Food Became Ceremonial

The real-world model here is Movile Cave in Romania, an ecosystem that runs entirely on chemosynthetic bacterial mats instead of sunlight.

That's the actual biological anchor for the "wheat field" analogy, not just a fantasy hand-wave.

For a warm-blooded creature, this would have meant constantly living on the edge of famine.
For an ectotherm, though, the tone changes: the base metabolism is so low that famine turns into "organized scarcity," which is a much more dignified and playable hardship.

It also produced the nicest emergent idea in the whole document almost by accident:

*a culture where the one big weekly meal is simultaneously dinner, court, and church.*

== Why Surface Adaptation Remains Difficult

This section carries an unplanned but real resonance with how deaf and blind people actually describe adapting to a hearing/sighted-default world — the prosthesis working, but crudely, and adaptation being ongoing labor rather than a problem solved once.

That wasn't the design goal going in; it fell out naturally from taking the biology seriously.

The one deliberate rule adopted from that resemblance is:

*Never let the prosthesis get a magic upgrade that resolves the arc.*

Keep it crude forever, and let comprehension plateau short of perfect.

That's both more respectful and better game design, since it keeps the party dynamic mechanically relevant for the whole campaign instead of a Session 1 gimmick to outgrow.

Even in a high-tech setting, where the prosthesis is an advanced device rather than a crude contraption, the perception of visual/auditory cues by an Oniscian should remain foreign and alien to them.

== Why Telepathy Matters

Telepathy bypassing sensory modality entirely is a real 5e rules quirk worth exploiting deliberately here.

It turns a niche spell into a culturally load-bearing item for this species specifically.

It's also a useful safety valve: it preserves Pherologue's untranslatable intimacy — telepathy conveys meaning, never the chemical experience itself — even in a setting saturated with magic that could otherwise trivialize the whole sensory-isolation premise.

Importantly, telepathy is not part of the species' biological solution.

The Oniscians should function perfectly well in a setting where telepathy does not exist.

Magic merely provides an additional bridge between otherwise incompatible sensory systems.

== Why Many-Limbed Is Flavor Only

Many-Limbed originally granted extra held weapons and advantage against grapples/disarms.

It got walked back to pure flavor on reflection that these are skinny arthropod limbs, functionally closer to fingers than arms, and a creature like that plausibly needs *most or all* of them just to manage a single two-handed weapon.

Mechanically generous "extra limbs" traits are an easy trap in homebrew design.

This is a case where the stricter biological interpretation produced the easier and more balanced ruling.

== Why Oniscian Art Changes So Radically

This section is the clearest illustration of the whole design method.

Rather than asking "what would dwarven art look like," each art form was checked against which sense it depends on, and the answer was allowed to fall out from there.

Distance-senses — sight, hearing-through-air — either vanish or transform beyond recognition.

Contact, vibration, and chemical senses survive close to intact, or intensify into something richer than the human original.

Scent-composition earns its place as the one deliberately unknowable art form — not a translation problem or a hardware problem, but something structurally inaccessible to humans in principle.

== Why the Oniscians Are Settings-Neutral

The Oniscians were deliberately designed so that their existence does not depend on the metaphysics of a particular setting.

A fantasy setting may contain magic.

A science-fiction setting may contain advanced technology.

A low-magic setting may contain almost neither.

The Oniscian should still be the same species.

This is why their fundamental solutions to underground life are biological:

- their senses are biological;
- their communication systems are biological;
- their food web is biological;
- their writing system follows from their sensory biology;
- their social structure follows partly from their communication biology;
- their unusual relationship with stone follows from their sensory and cultural history.

Magic should never be required to make the species' basic existence plausible.

== Design Principles to Preserve

=== Biology Should Generate Culture

The unusual aspects of Oniscian culture should arise from their sensory and physical biology wherever possible.

Communication, settlement patterns, writing, art, food, and social structure should feel like consequences rather than arbitrary fantasy decoration.

=== Biology and Mechanics Should Remain Distinct

A biological description should not be written in D&D terminology.

"Tremorsense within 60 ft." is a game rule.

"Detection of mechanical disturbances transmitted through connected substrate" is the fictional biology.

The former should translate the latter rather than replace it.

=== Alien Anatomy, Familiar Personhood

The Oniscians should be alien in body and sensory experience without becoming incomprehensible as player characters.

They should still have recognizable relationships, ambitions, loyalties, flaws, humor, and personal identities.

=== No Conventional Dwarf Body

Do not reintroduce the familiar "short stocky human" body merely because the species is constructed from the dwarf archetype.

The whole point is to preserve the *cultural logic* while rebuilding the biology.

=== No Single Sense Should Replace Vision Completely

Tremorsense, scent, antennae, and other senses should complement one another.

The Oniscians should be capable without becoming effectively omniscient.

=== Surface Adaptation Should Remain Meaningful

The surface is not simply an environment in which the Oniscian loses a few bonuses.

It should expose the fundamental difference between Oniscian civilization and the sensory assumptions of the wider world.

=== Permanence Is the Central Thematic Wound

The Oniscians should continue to value things that can be carved, recorded, preserved, and made permanent.

The surface should continue to challenge that worldview.

=== Magic Is Optional

The species should remain coherent if magic is completely removed from the setting.

Magic may provide workarounds, conveniences, or exceptional forms of communication, but it should never be necessary to explain the species' basic biology or civilization.

=== Magic Should Bypass Problems Without Erasing Their Meaning

Telepathy and other magical solutions can provide practical workarounds.

They should not automatically make Pherologue, Seismologue, or the Oniscian sensory experience culturally irrelevant.

=== The Party Relationship Matters

The Oniscian should remain meaningfully different from the people around them.

Translation, prostheses, sensory differences, and cultural misunderstandings should remain potential sources of character development rather than problems that disappear after the first session.

=== Dwarven Identity Should Emerge from Values

The Oniscians should read as a reinvention of the dwarf archetype because of:

- permanence;
- stone;
- craft;
- memory;
- clan;
- grudges;
- resistance to change;

not because they happen to live underground and have short limbs.
]
