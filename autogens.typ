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

#show heading.where(level: 1): it => [
  #v(0.6em)
  #block(
    text(
      font: "Latin Modern Sans",
      size: 15pt,
      weight: "bold",
      fill: rgb("#3d2f1f"),
    )[#it.body]
  )
  #line(length: 100%, stroke: 0.6pt + rgb("#8a6d3b"))
  #v(0.2em)
]

#show heading.where(level: 2): it => [
  #v(0.5em)
  #block(
    text(
      font: "Latin Modern Sans",
      size: 11.5pt,
      weight: "bold",
      fill: rgb("#5c4630"),
    )[#it.body]
  )
  #v(0.1em)
]

#align(center)[
  #text(
    font: "Latin Modern Sans",
    size: 22pt,
    weight: "bold",
    fill: rgb("#3d2f1f"),
  )[The Autogens]
  #v(-0.3em)
  #text(
    font: "Latin Modern Sans",
    size: 12pt,
    fill: rgb("#5c4630"),
  )[A Deconstructed Dwarf Archetype]
  #v(0.4em)
  #line(length: 40%, stroke: 0.6pt + rgb("#9a7b45"))
]

#v(0.3em)

#emph[
  A deconstructed dwarf archetype for use across fantasy, science fiction,
  and low- or no-magic settings.
]

#part[Preamble][
== The Autogens at a Glance

The Autogens are a settings-neutral deconstruction of the dwarf archetype.

They retain a recognizable dwarven core—craft, endurance, social duty,
intergenerational memory, and continuity—while discarding familiar visual and
cultural shorthand and rebuilding the species from speculative biology.

They are:

- compact, heavily mineralized beings with a non-humanoid body plan;
- organisms with a distributed nervous system and a specialized memory organ;
- successors produced through destructive parthenogenetic succession;
- inheritors of compressed ancestral memory through the mnemospore;
- culturally organized around testament, custody, and continuity;
- designed to feel alien in anatomy but still playable as people.

The result is a species whose differences are not cosmetic.
Their biology changes identity, and identity changes society.

== Core Identity

The central design question behind the Autogens is:

#quote[*What makes a dwarf a dwarf if we remove the conventional visual and
cultural baggage?*]

The Autogens are therefore not intended to be "dwarves with unusual looks."
Their body plan, cognition, and life cycle have social consequences for law,
kinship, inheritance, age, memory, and personhood.

Their central philosophical tension is:

*An Autogen inherits itself, but is not merely a copy of itself.*

A successor inherits body plan, genetics, selected memories, skills, fears,
and obligations, but also develops through its own lived experience.

Each succession therefore contains, at once:

- continuity
- inheritance
- death
- rebirth
- individuality
- change

== Settings Neutrality

The Autogens are designed as a *settings-neutral playable species*.

Nothing essential to their anatomy, memory inheritance, or social structure
requires magic.

They do not require:

- supernatural senses;
- magical reproduction;
- divine or arcane memory transfer;
- any specific cosmology.

Magic or advanced technology may still exist in a setting and can provide
additional ways to interact with the species, but these are optional overlays
rather than foundations.

== How This Document Is Organized

This document separates three different levels of description.

*Biology & Culture* describes what the Autogens are within the fictional
world. It treats anatomy, senses, reproduction, memory, and society as an
encyclopedic subject and avoids game mechanics and narrative advice.

*Storytelling* describes what those characteristics mean for playable
characters, campaigns, and table play.

*Designer Notes* explain unresolved questions and the principles used to
stabilize the concept as the design evolves.
]

#part[Biology & Culture][

== Name and Terminology

=== Autogen

*Autogen* is the singular common name; *Autogens* is the plural.

The name is inspired by Greek *autogenēs*, meaning approximately
*self-produced / self-generated*.

The Greek-derived concept was chosen because it has the desired tonal
qualities:

- mundane enough to resemble a scientific or taxonomic term
- fantastic enough to belong naturally in speculative fiction
- intelligible to English-speaking readers
- not tied to conventional dwarf aesthetics

The name emphasizes the species' central philosophical idea:

*They produce their successors from themselves.*

However, the successor is not a simple clone. It inherits the predecessor
while developing independently and being shaped by its own experiences.

=== The mnemospore

A *mnemospore* is the biological memory seed produced by an elderly Autogen.
The word combines the Greek-derived concepts of *mnēmē* (memory) + *spore / sporos* (seed).

The term was chosen because the memory archive is literally a *seed of
ancestral memory* planted into the next generation.

The mnemospore is not magical and is not a literal recording of a brain.

It is a biological information-bearing structure containing a lossy,
compressed representation of the elder's significant memories and learned
neural patterns.

While no such memory storage and retrieval system exists in nature, 
the basis for transmitted knowledge exist (think of shepeherd dogs instinctively knowing
how to herd sheep), and the brain is but a neural network, 
so that a biological ability to store and restore its state requires but a small leap of imagination.

== Body Plan

The Autogen is a *bipedal, bilaterally symmetrical terrestrial organism*.

It remains broadly human-sized and capable of walking on Earth-like planetary
surfaces.

However, it is not a modified human.

Its anatomy is based primarily on a *living ossicular skeleton*, inspired by
the biomineralized internal structures of echinoderms.

The adult silhouette is reminiscent of a small living *rock golem*.
However, this resemblance is limited to aesthetic.

Autogens are living organisms composed of:

- flesh
- blood
- living mineralized tissue
- nervous tissue
- muscles
- ossicles
- organs

They are not actually made of stone! It's their heavilty mineralised skin that gives the impression.

== The Barrel Torso

The central body is a compact, roughly barrel-shaped trunk.

The trunk is rigid, due to a dense internal lattice of living, biomineralized
ossicles, and it functions as a major structural unit (unlike the highly
flexible human-style spine-and-ribcage assembly).

Consequences include:

- little torso flexion
- little spinal twisting
- poor ability to bend at the waist
- limited ability to contort
- substantial resistance to blunt trauma
- a squat, solid silhouette

An Autogen may have difficulty scratching the middle of its own back,
and would normally use a tool or ask a friend for help with grooming.

== Ossicles and Mineralized Skin

The Autogen's body contains extensive *biomineralized ossicles*.

These are living structural tissues formed by a composite material analogous to the
fracture-resistant ossicles of echinoderms:

- mineral components provide hardness and compressive strength
- organic components provide toughness and resistance to fracture
- flexible tissues connect individual structural elements
- living tissues maintain and repair the mineralized structures

The ossicles extend outward into the integument, producing *thick, hardened
mineralized skin*.

From a distance, an adult Autogen can therefore resemble a small stone or
ceramic statue.

At close range, however, its living nature is obvious:

- plates move against one another
- flexible tissue occupies seams
- muscles move beneath the integument
- the organism breathes
- sensory organs move
- vocal structures vibrate
- blood and living tissue exist beneath the mineralized exterior

The resulting aesthetic is that of *a living organism beneath a layer of
living biological armor*.

=== Joints

Individual ossicles and groups of ossicles can articulate against one another
through flexible living tissue.

Major joints are therefore better understood as *regions of articulation and
reduced ossicle density* rather than exact analogues of human ball-and-socket
or hinge joints.

Muscles attach to groups of ossicles and move them relative to one another.

This allows the body to retain recognizable limbs while using an essentially
different skeletal architecture.

== Locomotor Limbs

The two legs attach low on the barrel, somewhat toward its sides.

They are short, thick, and powerful, primarily designed for stability and weight bearing, not for agility or acrobatics.

They terminate in broad, *elephant-like feet* that provide a large support area, 
helping compensate for the difficulty of balancing a rigid barrel-shaped body on two legs.

This results in a look like a *solid living statue walking with purpose*.

== Manipulatory Limbs

The two arms attach to the sides of the barrel, relatively high on the body, and end in prehensile hands.

The shoulders use deep articulating structures embedded in the ossicular
framework, and the resulting limbs are hightly mobile.

The Autogens are capable tool users, capable of both strength and precision.

== The Sensory Mast

The Autogens don't possess a humanoid head; 
instead, a *sensory mast* rises from the top of the barrel.

The mast contains the principal external sensory and communication organs, 
but it does not contain the brain.

Its organs include eyes, ears, olfactory tendrils, and a sound-producing structure 
independent of their respiratory system (see @vocalization). 

The structures can move independently or in coordinated patterns, 
that provide much of the Autogen's equivalent of facial expression.

To humans these may initially appear strange or ambiguous, but Autogens
possess a sophisticated native body language based on them.

== Breathing

The upper portion of the barrel contains *bellows-like respiratory organs*.

A respiratory opening is located toward the top of the torso, near the base of
the sensory mast. 
Air passes through an orifice located just under the sensory mast, 
where it flows by the olfactory tendrils.

Because the torso is so rigid, the external signs of breathing are very subtle.

== Feeding and Digestion

A large *feeding aperture* is located on the torso, approximately in its
central/lower region.

Five sharp teeth form a star-like structure that crushes and chewes food,
delivering it to a traditional digestive apparatus.

== Vocalization <vocalization>

The Autogen speaks using an *external sound-producing organ on the sensory
mast*. It's separate from the feeding aperture and the breathing orifice.

This is completely unlike a larynx or a mouth.
It consists of specialized membranes and resonating structures, 
resembling the file-and-scraper mechanism used by crickets.

The resulting voice sounds weird to human ears, 
but has enough modulation to be able to approximate human speech.

== The Distributed Brain

The Autogen possesses a *distributed central nervous system* rather than a
single centralized brain.

There are five major neural lobes:

1. left arm lobe
2. right arm lobe
3. left leg lobe
4. right leg lobe
5. sensory/central lobe associated with the sensory mast

These are connected by thick neural pathways running through the torso.

The limbs therefore possess substantial local neural processing.

The Autogen does not consciously control every microscopic component of
movement; the limb lobes handle much of the low-level motor processing.

The sensory lobe processes and integrates information from the mast.

The five regions collectively constitute one mind.

The distributed architecture doesn't make Autogens
immortal or allow them to casually survive catastrophic brain injury.
Damage to a lobe can cause severe functional impairment; damage to the neural
connections can be fatal.

== The Memory Organ

Autogens possess a specialized *memory organ* associated with the central
nervous system.

Its purpose is to convert significant long-term neural information into
biological information-bearing material.

During an Autogen's life, specialized *archiver cells* interact with the
nervous system, preserving repeated activities, deeply practiced skills,
and emotionally significant experiences.

The process is *imperfect*.
The memory archive is not a digital recording of the individual's brain.
Trivial experiences disappear, details are compressed, and memories become generalized.
Old memories lose specificity, and multiple ancient lives gradually blend together.

A very old Autogen cannot necessarily distinguish which ancestor experienced
a particular event.

It may instead possess a generalized inherited memory such as "this place is dangerous", 
rather than a precise recollection of which ancestor suffered a particularly
bad experience.

This lossiness prevents the species from becoming
immortal repositories of perfect historical records.

== The Mnemospore

When an Autogen reaches elderhood, its memory organ produces a *mnemospore*.

The mnemospore contains the compressed biological information necessary to
reconstruct an approximate ancestral neural state in a genetically
compatible successor.

It is sealed inside a tough biomineralized shell.

The shell is aesthetically analogous to a pearl, but the structure is entirely
biological and specialized.

The mnemospore is simultaneously:

- biological archive
- reproductive inheritance
- physical relic
- sacred object
- symbol of personal continuity

== Reproduction and Succession

Autogen reproduction has two complementary modes.

=== Sexual Reproduction

Autogens reproduce sexually in a conventional, non-destructive manner.

A couple can have multiple children.

The number of offspring is broadly comparable to human reproductive patterns
rather than the enormous broods characteristic of many arthropods.

Sexual reproduction provides:

- genetic novelty
- population growth
- resilience
- variation
- a normal family structure

It prevents the species from becoming a closed population of endlessly
recycled individuals.

=== Destructive Parthenogenetic Succession

Every elder Autogen has another reproductive possibility: *succession*.

The elder produces a genetically related successor through a specialized form
of destructive parthenogenesis.

The process ultimately kills the parent.

== The Juvenile Form

The juvenile Autogen is a smaller, weaker, softer version of the adult.

It is already recognizably the same species and retains the fundamental body
plan:

- barrel-like torso
- four limbs
- sensory mast
- bilateral symmetry

However, its ossicles are:

- smaller
- thinner
- less mineralized
- more flexible

This allows growth without requiring the organism to continuously enlarge a
fully hardened adult shell.

Juveniles cannot reproduce.

They can nevertheless learn, develop personalities, and accumulate their own
experiences.

This is essential.

The successor is not simply a dormant adult waiting to receive memories.

It is a genuine developing individual.

== Hardening and Awakening

Once the juvenile reaches approximately adult size, it undergoes a profound
biological transition.

This may involve metamorphosis, deep hibernation, or a combination of
developmental changes.

The important feature is that the transition marks *true adult maturation*.

During it:

- the ossicles reach their mature mineralization
- the adult body becomes fully hardened
- reproductive capability develops
- the mnemospore becomes activated
- specialized enzymes dissolve its shell
- the inherited memory information is released

The successor awakens as an adult carrying the compressed memories of its
predecessor.

== The Meaning of Age

Autogen society distinguishes between *biological age* and *successional
identity*.

A newly awakened adult may say:

> *"Six and eleven."*

This means:

> *sixth succession; eleven years since awakening.*

The first number identifies the succession count.

The second identifies the number of years since the current awakening.

The first number identifies the succession count.

The second identifies the number of years since the current awakening.

A juvenile who has not yet experienced succession simply says:

> *"I'm eleven."*

A generation-zero Autogen, having no predecessor, might say:

> *"I'm new and eleven."*

This vocabulary reflects their unusual conception of personal continuity.

A human asks:

> *"How old are you?"*

An Autogen may instead be asked:

> *"Which are you, and how long have you been awake?"*

== Successional Identity

The new adult is neither simply a new individual nor simply the old individual
reborn.

It is a *continuation*.

The inherited memories provide continuity, but the juvenile's independent life
provides divergence.

Consequently, successive incarnations of the same lineage can develop:

- different personalities
- different interests
- different political beliefs
- different friendships
- different values

while still feeling genuine continuity with previous selves.

The species therefore has a culturally important distinction between:

> *"the body"*

and

> *"the continuing person."*

An Autogen may meaningfully describe an ancestor as "me," while simultaneously
acknowledging that the ancestor was not identical to the current self.

== The Elder's Testament

The mnemospore is not the only inheritance.

An elder traditionally leaves a *testament* to the people entrusted with
raising their successor.

The testament contains instructions and wishes concerning the successor's
upbringing.

These may include:

- education
- skills
- philosophical guidance
- personal hopes
- unfinished obligations
- warnings
- recommendations about interests and vocation

The testament can deliberately contradict the elder's own life.

For example, an engineer might conclude:

> *"I spent too much of my life studying engineering. Make sure my successor
> learns music."*

Or:

> *"I wasted my youth on frivolous pursuits. Teach my successor engineering
> first."*

The testament represents the elder's *judgment upon their own life*, rather
than merely a set of instructions for reproducing themselves.

== Custody of the Testament

Being entrusted with another person's testament is one of the highest
expressions of friendship and trust in Autogen society.

The custodian is not merely raising a child.

They are entrusted with:

- part of an individual's legacy
- the upbringing of their successor
- the interpretation of their final wishes
- effectively, one half of the mechanism by which that person's continuity
  becomes possible

The mnemospore represents the biological half of succession.

The testament represents the *social half*.

Together:

> *the mnemospore preserves who the elder was; the testament influences who
> the successor becomes.*

== Why Society Matters

Destructive succession could theoretically create a solipsistic cycle:

> one individual → successor → successor → successor

The juvenile stage prevents this from becoming socially self-contained.

Someone must:

- raise juveniles
- feed them
- protect them
- educate them
- introduce them to society
- interpret their ancestor's testament
- help them become adults

Sexual reproduction further creates conventional families and social networks.

As a result, Autogen society is not merely a collection of immortal
individuals repeatedly respawning themselves.

It is a society containing:

- parents
- children
- siblings
- friends
- elders
- custodians
- successors
- unrelated individuals

The distinction between biological descent and personal continuity can
therefore become culturally important.

== Failure of Succession

An elder may die without producing a successor.

Reasons may include:

- infertility
- illness
- accident
- failure to reach elderhood
- deliberate refusal
- biological failure

If an elder has already produced a mnemospore but subsequently fails to
create a successor, the mnemospore remains as a relic.

It can be preserved and revered.

But it is useless for restoring that individual.

This creates a profound cultural distinction between:

> *memory preserved*

and

> *continuity achieved.*

A preserved mnemospore can prove that someone existed and that they intended
to continue.

It cannot by itself make that continuation happen.

== The Sacred Quality of the Mnemospore

Although the mnemospore is entirely biological, it naturally acquires
religious and ceremonial significance.

It is physically:

- the elder's compressed past
- the seed of the successor
- a tangible object representing continuity

A mnemospore may therefore be treated with extraordinary reverence without
requiring the Autogens to have supernatural beliefs.

Different cultures could interpret it:

- religiously
- philosophically
- biologically
- legally
- sentimentally

while all agreeing on its practical importance.

== Terminology Summary

| Term | Meaning |
|---|---|
| *Autogen* | One individual of the species |
| *Autogens* | The species as a whole |
| *Autogenesis* | The biological process of producing a successor |
| *Succession* | The transition from elder to successor |
| *Mnemospore* | The mineral-encased biological memory seed |
| *Elder* | An Autogen approaching or undergoing succession |
| *Successor* | The juvenile/adult produced by an elder's destructive parthenogenesis |
| *Testament* | The elder's instructions and wishes for their successor's upbringing |
| *Awakening* | The adult transition during which the mnemospore is opened and inherited memories become accessible |
]

#part[Storytelling][

== The Autogens as a Deconstructed Dwarf Archetype

The Autogens deliberately remove familiar dwarf traits:

- beards
- axes
- Scottish aesthetics
- underground habitation
- mining as an innate occupation
- low-light vision
- magical darkvision
- magical tremorsense
- stone flesh
- magical resilience
- supernatural immortality

These traits were discarded because they are consequences of the conventional
dwarf archetype rather than fundamental requirements for a dwarf-like species.

Their unusual abilities should instead emerge from their biology.

== Sensory Abilities in Play

The Autogens do not inherently require low-light vision.

Likewise, vibration sensing is not intrinsically magical.

If useful for a particular population, vibration sensing could be implemented
as a biological sensory system analogous in principle to mechanosensation in
real organisms.

However, because the current Autogens are conceived primarily as
general-purpose surface dwellers rather than innate subterranean miners,
exceptional vibration sensing is *not* a defining species trait.

The same applies to unusually strong low-light vision.

The species' special biology is instead concentrated on:

- mineralized integument
- distributed nervous system
- memory archiving
- mnemospore formation
- destructive succession
- unusual body architecture

== The Overall Aesthetic

An adult Autogen should evoke:

> *a small, squat living stone statue.*

But the impression should change dramatically on closer inspection.

At a distance:

- squat
- broad
- heavy
- mineral
- rigid
- almost golem-like

At close range:

- flesh
- blood
- seams
- moving plates
- breathing
- sensory organs adjusting
- vocal membranes vibrating
- living tissue beneath the mineral shell

The visual contradiction is intentional.

They look like something that *should be inanimate*, but clearly are not.

== Continuity as a Character Concept

The Autogens' central philosophical tension gives the species a particular
way of approaching identity.

A successor inherits the predecessor while developing independently.

The inherited memories provide continuity, but the juvenile's independent life
provides divergence.

Successive incarnations of the same lineage can therefore possess different
personalities, interests, political beliefs, friendships, and values while
still feeling genuine continuity with previous selves.

An Autogen may meaningfully describe an ancestor as "me," while simultaneously
acknowledging that the ancestor was not identical to the current self.

== The Central Thematic Statement

The Autogens' biology, culture, and aesthetics all reinforce one idea:

> *Continuity does not require sameness.*

The body survives through mineralization.

The mind survives through distributed neural architecture.

The past survives through the mnemospore.

The individual survives through succession.

But none of these forms of survival are perfect.

The body changes.

The memories become compressed.

The personalities diverge.

The ancestor dies.

The successor is born.

And yet the Autogen can truthfully say:

> *"That was me."*

while also saying:

> *"I am not them."*

That paradox is the central identity of the species.

== Strange but Playable

The body can be extremely strange while remaining capable of ordinary
character-driven play.

The anatomy retains enough familiar functionality for an Autogen to:

- hold weapons
- use tools
- open doors
- write
- manipulate objects
- operate machinery
- gesture
- walk through an ordinary environment

The guiding principle is:

> *Alien anatomy, familiar personhood.*

An Autogen should still be capable of being an ordinary player character with
recognizable motivations, relationships, flaws, and individuality.

== Society as a Source of Story

The Autogen lifecycle naturally creates relationships between:

- parents
- children
- siblings
- friends
- elders
- custodians
- successors
- unrelated individuals

The mnemospore and testament create two different forms of inheritance.

The mnemospore preserves part of the elder's past.

The testament influences the successor's future.

This distinction can make continuity, inheritance, family, and individual
identity meaningful sources of character and story.
]

#part[Designer Notes][

== Biological Rather Than Magical

Whenever possible, unusual capabilities should have a biological explanation.

== Alien Anatomy, Familiar Personhood

The body may be extremely strange, but an Autogen should still be capable of
being an ordinary player character with recognizable motivations,
relationships, flaws, and individuality.

== No Mandatory Dwarf Clichés

Do not reintroduce beards, mines, axes, underground living, or similar
features merely because they are traditional.

== Continuity Without Immortality

Succession preserves meaningful aspects of the individual, but does not
create perfect immortality.

== Inheritance Without Determinism

Inherited memories and the elder's testament influence the successor without
completely determining their personality.

== Mineral Does Not Mean Stone

The mineralized body is living biological tissue.

== Strange but Playable

The anatomy can be alien, but should still permit ordinary interaction with
an environment and other characters.

== Society Is Necessary

The lifecycle should generate social relationships rather than making
society irrelevant.

== The Past Matters, but Fades

Memory inheritance is powerful enough to create genuine continuity but lossy
enough that history remains history.

== Open Questions Deliberately Left Unresolved

The following are not currently considered necessary to define the species and
may be specified later:

- exact molecular mechanism of memory encoding
- exact composition of the ossicles
- detailed vascular anatomy
- exact structure of the lungs
- exact reproductive anatomy
- precise number and arrangement of fingers/toes
- detailed sensory organs
- exact mechanism by which mnemospore information reorganizes the nervous
  system
- precise age of sexual maturity
- precise age of succession
- exact duration of juvenile development
- exact duration of metamorphosis/hibernation
- exact lifespan
- detailed evolutionary history
- taxonomy beyond the common name "Autogen"

These should remain flexible until the setting requires them.

== Design Principles to Preserve

=== Biological Rather Than Magical

Whenever possible, unusual capabilities should have a biological explanation.

=== Alien Anatomy, Familiar Personhood

The body may be extremely strange, but an Autogen should still be capable of
being an ordinary player character with recognizable motivations,
relationships, flaws, and individuality.

=== No Mandatory Dwarf Clichés

Do not reintroduce beards, mines, axes, underground living, or similar
features merely because they are traditional.

=== Continuity Without Immortality

Succession preserves meaningful aspects of the individual, but does not
create perfect immortality.

=== Inheritance Without Determinism

Inherited memories and the elder's testament influence the successor without
completely determining their personality.

=== Mineral Does Not Mean Stone

The mineralized body is living biological tissue.

=== Strange but Playable

The anatomy can be alien, but should still permit ordinary interaction with an
environment and other characters.

=== Society Is Necessary

The lifecycle should generate social relationships rather than making society
irrelevant.

=== The Past Matters, but Fades

Memory inheritance is powerful enough to create genuine continuity but lossy
enough that history remains history.


// ============================================================================
// CURRENT CANONICAL NAMES
// ============================================================================

= Current Canonical Names

*Species:* Autogen

*Plural:* Autogens

*Memory seed:* mnemospore

These terms are considered *locked in* unless deliberately revisited later.
]
