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
- able to secrete a fluid from their hands that temporarily softens stone,
  allowing them to shape it like clay;
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

The species' biology, culture, and appearance all reinforce the same idea:
*continuity does not require sameness*. An Autogen can say of a predecessor
both *"That was me"* and *"I am not them"*, and both statements are true.

== Settings Neutrality

The Autogens are designed as a *settings-neutral playable species*.

Nothing essential to their anatomy, stonecraft, memory inheritance, or social
structure requires magic.

They do not require:

- supernatural senses;
- magical stone-shaping;
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
characters, campaigns, and table play, and includes a template for the fifth
edition of Dungeons & Dragons.

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

The ossicles also make the body much denser than water. Like the starfish
that inspired their anatomy, Autogens cannot float or swim: in deep water they
sink to the bottom, where they can walk for as long as they can hold their
breath.

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

== Stone-Softening Secretion

Glands in an Autogen's palms and fingertips secrete a fluid that temporarily
softens stone.

The secretion derives from the metabolic adaptations that maintain the
species' heavily mineralized body. Throughout its life, an Autogen deposits,
dissolves, and remodels mineral in its ossicles and integument. In the hands,
the enzymes involved in this process are secreted outward and act on external
mineral matter instead.

Applied to stone, the secretion turns it into a dense, malleable mass. While
it remains soft, the stone can be pressed, drawn out, bent, and smoothed by
hand or with simple tools. It then hardens again into solid stone.

The process works only once. Stone that has been softened and has hardened
again is no longer affected by the secretion, so every shape an Autogen gives
to stone is permanent.

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
identical successor, is sealed inside a tough biomineralized shell.

The shell is a smooth sphere, reminiscent of a pearl, about 10 cm in diameter,
but the internal structure is entirely biological and highly specialized.

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
rather than the enormous broods characteristic of many invertebrates.

Sexual reproduction provides genetic novelty and population growth, 
both of which are fundamental for a resilient, durable society,
and a normal family structure.

It prevents the species from becoming a closed population of endlessly
recycled individuals.

=== Destructive Parthenogenetic Succession

Every elder Autogen has another reproductive possibility: *succession*.

The elder produces a genetically related successor through a specialized form
of destructive parthenogenesis.

The parent dies through this process, 
but passes its mnemospore to the offspring.

== The Juvenile Form

The juvenile Autogen is a smaller, weaker, softer version of the adult.

It is already recognizably the same species and retains the fundamental body
plan, but its ossicles are smaller, thinner, less mineralised, 
and thus more flexible.

This allows growth without requiring the organism to continuously enlarge a
fully hardened adult shell.

Juveniles cannot reproduce.

They can nevertheless learn, develop personalities, and accumulate their own
experiences.

This is essential: a successor is not simply a dormant adult waiting to receive memories.
It is an independent developing individual.

== Hardening and Awakening

Once the juvenile reaches approximately adult size, it undergoes a profound
biological transition, similar to a soft form of metamorphosis. 

This process lasts for about one week, during which the young Autogen is mostly
asleep, whith sporadic spells of awakening to consume some food or have some water.

This transition marks *true adult maturation*. 
During it, the ossicles reach their mature mineralization,
the adult body becomes fully hardened, 
and reproductive capability develops.
If the juvenile is a successor, this transition also activates the mnemospore.
Specialized enzymes dissolve the spore shell, releasing the inherited memory record.

The individual then awakens as an adult carrying a compressed memory inheritance
from its predecessor.

== The Meaning of Age

Autogen society distinguishes between *biological age* and *successional
identity*.

An adult might describe itself as:

> *"Six and twenty-two."*

In this convention, the first number indicates succession order, and the
second gives the number of years since birth:

> *sixth succession; twenty-two years since birth.*

A juvenile that has not yet undergone hardening would simply say:

> *"I'm eleven."*

A generation-zero Autogen, with no predecessor, might say:

> *"I'm new and twenty-two."*

This terminology reflects a distinctive understanding of personal continuity.
Where a human would typically ask:

> *"How old are you?"*

an Autogen-oriented formulation is closer to:

> *"Which are you, and how long have you been awake?"*

== Successional Identity

A newly awakened adult is neither simply a new individual nor merely the old
individual returned. It is better understood as a *continuation*.

Inherited memory provides continuity, while the juvenile phase introduces
divergence through independent experience.

As a result, successive members of the same lineage may differ in personality,
interests, political commitments, friendships, and values, while still
recognizing a real continuity with earlier selves.

Autogen thought therefore distinguishes between:

> *"the body"*

and

> *"the continuing person."*

An Autogen can meaningfully refer to an ancestor as "me" while also
acknowledging that the ancestor is not identical with the present self.

== The Elder's Testament

The mnemospore is not the only form of inheritance.

Before succession, an elder traditionally leaves a *testament* to those who
will raise the successor.

The testament records instructions and wishes for the successor's upbringing.
Typical content includes:

- education;
- skills to be emphasized;
- philosophical guidance;
- personal hopes;
- unfinished obligations;
- warnings;
- recommendations about interests or vocation.

Importantly, a testament may critique the elder's own life rather than simply
repeat it.

For example, an engineer might write:

> *"I devoted too much of my life to engineering. Ensure my successor learns
> music."*

Or, conversely:

> *"I wasted my youth on trivial pursuits. Teach my successor engineering
> first."*

In this sense, the testament functions as the elder's reflective judgment on
their own life, not merely as a replication protocol.

== Custody of the Testament

Being entrusted with another person's testament is among the highest marks of
friendship and confidence in Autogen society.

A custodian is not only raising a child; they are entrusted with:

- part of an individual's legacy;
- the practical upbringing of that individual's successor;
- interpretation of final wishes;
- one half of the process by which personal continuity becomes possible.

The mnemospore constitutes the biological half of succession.
The testament constitutes the *social half*.

Together:

> *the mnemospore preserves who the elder was; the testament helps shape who
> the successor becomes.*

== Why Society Matters

In principle, destructive succession might collapse into a closed cycle:

> one individual → successor → successor → successor

The juvenile stage prevents that outcome by requiring sustained social care.
Someone must:

- raise juveniles;
- feed and protect them;
- educate them;
- introduce them to wider social life;
- interpret the ancestor's testament;
- guide them into adulthood.

Sexual reproduction further generates ordinary kinship networks.

Autogen society is therefore not a collection of effectively immortal
individuals repeatedly reconstituting themselves. It includes parents,
children, siblings, friends, elders, custodians, successors, and unrelated
peers.

The difference between biological descent and personal continuity can thus
become a major cultural distinction.

== Failure of Succession

An elder may die without producing a successor.

Possible causes include:

- infertility;
- illness;
- accident;
- death before elderhood;
- deliberate refusal;
- other biological failure.

If an elder has produced a mnemospore but no successor is ultimately formed,
the mnemospore remains as a relic.

It may be preserved and venerated, but it cannot restore the individual.

This creates a profound distinction between:

> *memory preserved*

and

> *continuity achieved.*

A preserved mnemospore can attest that someone existed and intended to
continue. It cannot, by itself, complete that continuation.

== The Sacred Quality of the Mnemospore

Although the mnemospore is wholly biological, it readily acquires ceremonial
and religious significance.

It is simultaneously:

- the elder's compressed past;
- the developmental seed of a successor;
- a material emblem of continuity.

For this reason, a mnemospore may be treated with extraordinary reverence
without requiring supernatural doctrine.

Different Autogen cultures may frame it in religious, philosophical,
biological, legal, or sentimental terms while still agreeing on its practical
importance.

== Stonecraft

Because softened stone can be drawn out and bent before it sets, Autogens can
make stone objects that no carver could produce: thin-walled vessels, curved
blades, hooks, interlocking links, lattices, and sculptures whose forms would
shatter under a chisel.

Stone is consequently to the Autogens what clay, wood, and metal are to many
other peoples: an everyday material for tools, containers, and ornaments, as
well as for art.

Every piece is final. A mistake made while the stone is soft cannot be
corrected once it has set, and a finished object can never be reshaped, only
broken. Autogen craftsmanship therefore places great value on planning and
sureness of hand, and a finished work is regarded as a commitment as much as
an object.

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

== Playing an Autogen

Physically, an Autogen can do most of what a human can, if somewhat stiffly.
What sets an Autogen character apart is less its body than its relationship
with its own past.

The most important character-facing consequences are:

- a heavy, rigid body that is hard to injure but poor at bending, crawling,
  and acrobatics;
- a sensory mast instead of a face, with a body language that outsiders often
  misread;
- a voice that can approximate human speech but never sounds quite human;
- hands that can soften stone, making the character a natural craftsperson;
- a place in a successional lineage, unless the character is generation-zero;
- vague inherited memories that may surface at unexpected moments;
- obligations and relationships inherited from a predecessor.

None of these makes the character difficult to use in an ordinary adventure.
They give the player a different set of questions to answer about who the
character is.

== Translating the Biology into 5e

The following template adapts the Autogens to the 2014 rules of the fifth
edition of Dungeons & Dragons.

As with any game template, the traits are abstractions. They describe how the
species' biology plays at the table, not the biology itself.

The lineage, inherited memory, and the testament are deliberately left out of
the rules. They work better as sources of story than as game mechanics.

== Proposed 5e Racial Traits

- *Ability Score Increase*: Constitution +2, Strength +1.
- *Size*: Medium.
- *Speed*: 25 ft.
- *Mineralized Hide*: when you take bludgeoning damage, reduce it by your
  proficiency bonus.
- *Stable Footing*: you have advantage on saving throws and ability checks
  made to avoid being shoved or knocked prone.
- *Rigid Body*: you have disadvantage on Dexterity (Acrobatics) checks. When
  squeezing through a narrow space, each foot of movement costs 2 extra feet
  instead of 1.
- *Conspicuous*: you have disadvantage on Dexterity (Stealth) checks. Your
  rigid body cannot move fluidly, and your vocal organ cannot produce a true
  whisper.
- *Dense Body*: you can't swim. In deep water you sink to the bottom, where
  you can walk at half speed.
- *Unreadable*: creatures unfamiliar with Autogens have disadvantage on Wisdom
  (Insight) checks made against you.
- *Stone-Softening*: as described below.
- *Tool Proficiency*: mason's tools.
- *Languages*: Common and one other language appropriate to the setting.

== Stone-Softening

You can use this trait a number of times equal to your proficiency bonus, and
regain all expended uses when you finish a long rest.

As an action, you can touch stone and soften up to 1 cubic foot of it. The
stone stays soft for 10 minutes, then hardens permanently. As an action, you
can spend another use either to soften an additional cubic foot of stone, or
to keep stone you are touching soft for another 10 minutes.

While the stone is soft, you can shape it by hand:

- simple shapes, such as a handhold, a wedge, or a plug for a crack, take one
  action;
- small objects, such as a cup, a knife, or a figurine, can be finished
  within a single softening with a successful check using mason's tools, at a
  DC set by the DM;
- larger works follow the normal crafting rules, but take half the usual
  time.

The trait has the following limits:

- stone that has already been softened once, by you or any other Autogen,
  cannot be softened again;
- softened stone is dense and sluggish rather than liquid, and cannot trap or
  harm creatures;
- softening part of a load-bearing structure may cause it to sag or give way,
  at the DM's discretion;
- whether the trait affects other mineral materials, such as brick, ceramic,
  glass, or gemstones, is up to the DM.

== Choosing a Place in the Lineage

The first decision when creating an Autogen character is where it stands in
its lineage.

*Generation-zero.* The character was born through sexual reproduction and has
no predecessor. It has no inherited memories and no testament to honor.
Depending on the community, other Autogens may see it as free of the past or
as lacking roots.

*Newly awakened successor.* The character has recently completed its
hardening. Its inherited memories are new and sometimes unsettling, its
custodians may still have expectations of it, and the predecessor's testament
weighs heavily. This option suits a story about finding one's own identity.

*Established successor.* Years have passed since awakening. The inherited
memories have settled into the background, and the character has already
accepted, rejected, or reinterpreted what its predecessor asked of it.

*Elder.* The character is approaching succession. It must decide whether to
undergo it, what to write in its testament, and whom to entrust it to. This
gives the character a natural arc and, eventually, a natural ending.

A juvenile character is also possible. Juveniles are smaller and softer than
adults and cannot yet reproduce, which makes them best suited to campaigns
about growing up.

== Succession Between Characters

When an elder player character undergoes succession, the player can continue
with the successor as a new character.

Because the successor must first grow through a juvenile stage, this works
best across a time skip or between campaigns. Another player character could
even be named custodian in the testament and raise the successor in the
meantime.

The successor should be played as a distinct person. It keeps some of its
predecessor's skills, habits, and fears, and remembers in general terms what
the predecessor did often or felt strongly about, but rarely the details. A
group using a particular game system might reflect this by letting the
successor carry over a single skill or proficiency from its predecessor, and
building everything else from scratch.

== Inherited Memory at the Table

Inherited memories work best as impressions rather than information: a sense
that a place is dangerous, an unexplained dislike of a family name, a skill
that comes too easily, a street that feels familiar in a city the character
has never visited.

The game master can use them as hooks or warnings, but they should rarely
provide reliable facts. A character who "remembers" an old fortress may be
right about its general layout and wrong about everything that has changed
since. Older memories may also have blended together, so the character cannot
always tell which ancestor they belonged to, or whether they are accurate at
all.

== Inherited Relationships

Other people do not always distinguish between a predecessor and its
successor as carefully as Autogens do.

An Autogen character may meet:

- old friends who expect to be recognized;
- rivals who transfer an old grudge to the successor;
- creditors who expect the predecessor's debts to be paid;
- people who owed the predecessor a favor, and may or may not honor it.

Kinship adds another layer. A successor has no parents in the usual sense,
but its predecessor may have had a partner and children through sexual
reproduction, who must now decide what the successor is to them.

Non-Autogen societies may have no legal framework for succession at all.
Whether a successor is bound by its predecessor's contracts, can inherit its
property, or can be held responsible for its crimes are all questions a
campaign can explore.

== The Testament as a Story Engine

A successor's testament provides a ready-made backstory. A character may have
been raised to:

- pursue a vocation the predecessor regretted neglecting;
- avoid one the predecessor regretted following;
- complete an unfinished obligation;
- make amends for an old wrong;
- protect a particular person, place, or object.

The character can embrace the testament, resent it, or reinterpret it.
Because a testament records the predecessor's judgment on its own life,
rejecting it amounts to disagreeing with oneself.

The testament also works from the other side. A player character may be named
custodian in someone else's testament and suddenly find themselves
responsible for raising a juvenile and interpreting the wishes of a dead
friend. Custodians may disagree about what a testament means; a testament may
ask for something unreasonable; and a testament may be lost, forged, or
contested. In mixed societies, an elder might even entrust its testament to a
non-Autogen friend.

== The Mnemospore in Play

A mnemospore is small enough to carry, sacred to many Autogens, and
impossible to replace. This makes it a natural focus for stories:

- a relic mnemospore, left by a failed succession, is stolen from a family
  shrine;
- two families dispute who should keep a relic;
- an elder refuses succession and faces pressure from family and community;
- an elder must reach its chosen custodians before its succession;
- outsiders want to study or open a mnemospore, which most Autogens would
  regard as desecration;
- a forgery is passed off as the relic of a famous ancestor.

== Stoneshaping in Play

The stone-softening secretion is best treated as a craft rather than a combat
ability. Making a fine vessel or sculpture takes time, skill, and planning,
like any other craft.

Small, quick uses still come up during an adventure. An Autogen might:

- shape a wedge, hook, or simple blade from a loose stone;
- deepen a handhold in a rock face;
- seal a crack in a wall;
- take an impression of a key or seal in a piece of softened stone;
- repair a carved stone object, provided it was carved and never softened;
- leave a mark that cannot later be altered.

The single-use rule matters in play. Anything an Autogen has already shaped
is immune to further softening, including walls, doors, and vaults built by
other Autogens. A strongroom of worked stone cannot be breached this way,
while an ordinary dungeon wall can.

The ability also generates stories:

- Autogen work is unmistakable, so an impossibly thin stone cup can reveal
  where it came from, or who made it;
- outsiders may assume the ability is magical, and react accordingly;
- a powerful patron may try to force an Autogen to work for them;
- a flawed masterpiece can never be corrected, only finished or destroyed;
- an inherited memory may include how to make something the successor has
  never made before.

== First Impressions

Autogens are easy to misjudge.

From a distance, a motionless Autogen can pass for a statue, which can be
useful in an ambush and awkward in a sculpture garden. Its breathing is so
subtle that observers may struggle to tell whether an unconscious Autogen is
still alive.

People unfamiliar with the species tend to misread the movements of the
sensory mast, either seeing no expression at all or reading the wrong one.
The Autogen voice is intelligible, but strange.

Age is another source of confusion. Autogens introduce themselves with two
numbers, such as *"Six and twenty-two"*, and among themselves are more likely
to ask *"Which are you?"* than *"How old are you?"*. Non-Autogens may treat a
successor as a child, as a reincarnation, or as the predecessor itself, and
any of these can cause offense.

== Physical Strengths and Limitations

The Autogen body favors stability and endurance over agility.

The rigid torso makes it hard to bend, crawl, contort, or squeeze through
narrow gaps, and acrobatics are out of the question. On the other hand, the
short legs and broad feet give secure footing, and an Autogen is hard to knock
over.

The mineralized skin offers substantial protection against blunt trauma, but
the Autogen is still flesh and blood underneath, and bleeds like any other
living creature.

Because much of its motor control is handled by the limb lobes, an injury to
one lobe can impair the corresponding limb specifically. This gives the game
master a way to describe lasting wounds without killing the character.

Water is a serious obstacle. An Autogen cannot swim, so a river crossing, a
capsized boat, or a flooded corridor can be life-threatening, and a party
traveling with one will need to plan around it.

Finally, an Autogen cannot easily reach its own back. It relies on tools or
friends for grooming, a small detail that can say a lot about whom it trusts.
]

#part(preamble: [_These notes explain the reasoning behind some of the design
choices, list the questions that remain deliberately open, and record the
principles that should guide future changes._])[Designer Notes][

== Why Familiar Dwarf Traits Were Discarded

The Autogens leave out most of the traits usually associated with fantasy
dwarves:

- beards;
- axes;
- Scottish aesthetics;
- underground habitation;
- mining as an innate occupation;
- low-light vision or magical darkvision;
- magical tremorsense;
- stone flesh;
- magical resilience;
- supernatural immortality.

These traits belong to a particular literary tradition rather than being
requirements of a dwarf-like species. Keeping them would have produced a
reskinned dwarf; removing them forces the question of what is left. This
design's answer is physical solidity, endurance, stonecraft, and a strong bond
with the past, all expressed through biology rather than costume.

== Why Autogens Can Soften Stone

Stonework is one of the few dwarf traits the Autogens keep, but in a different
form. Instead of mining and carving stone, they shape it the way other peoples
shape clay. This preserves the dwarven association with stone and craft while
leaving behind the mine and the pickaxe.

The ability had to remain biological. Real organisms already dissolve
mineral: vertebrate bone is continuously resorbed by cells that secrete acid
and enzymes, and some molluscs, such as date mussels, bore into limestone
using chemical secretions. A species whose entire body depends on depositing
and remodeling mineral is a plausible place for such a capacity to be turned
outward. Softening stone into a workable state, rather than simply dissolving
it, is the speculative step.

The single-use rule serves two purposes. It limits the ability, so that
nothing an Autogen makes can be casually undone and Autogen structures cannot
be breached by other Autogens. It also ties stonecraft to the species' central
theme: each shape is final, just as each life in a lineage is lived only once,
even if it is remembered.

== Why the Autogens Have No Special Senses

Nothing in Autogen biology calls for low-light vision or vibration sensing,
and neither would need to be magical. A population living underground could
plausibly evolve vibration sensing comparable to the mechanosensation of real
animals.

The Autogens described here, however, are generalist surface dwellers rather
than subterranean miners. Exceptional senses would add little to them and
would distract from what actually makes them distinctive: the mineralized
body, the stone-softening secretion, the distributed nervous system, and the
cycle of memory archiving and succession.

== Why the 5e Traits Look This Way

The template tries to translate only what the biology clearly implies.

The mineralized body is represented by resistance to blunt trauma, stable
footing, and the Constitution and Strength increases. Its costs are the
reduced speed, the penalties to Acrobatics and Stealth, and the inability to
swim. The Stealth penalty also reflects the Autogen voice, which, like a
cricket's, has no quiet register.

Stone-Softening is intentionally much weaker than the _stone shape_ spell. It
affects small volumes, takes time, and deals no damage, because it is meant to
be a craft rather than a weapon. Its power grows with the proficiency bonus,
which provides more uses, and therefore more stone or more working time.

Languages are left to the setting. Assigning a single language to an entire
species is a convention of the game rather than a consequence of biology:
humans are one species with hundreds of languages, and there is no reason the
Autogens should be different.

== Open Questions Deliberately Left Unresolved

The following details are not currently required to define the species and may
be specified later as needed:

- the molecular basis of memory encoding;
- the chemistry of the stone-softening secretion;
- which kinds of stone the secretion affects, and how strongly;
- whether it affects other mineral materials, such as ceramic, glass, or bone;
- how long softened stone remains workable;
- how much secretion an Autogen can produce, and how quickly it is
  replenished;
- the mechanism by which mnemospore information reorganizes the nervous
  system;
- the precise composition of ossicles;
- full anatomical detail;
- exact number and arrangement of digits;
- precise age of sexual maturity;
- precise age of succession;
- duration of juvenile development;
- duration of metamorphic transition;
- total lifespan;
- detailed evolutionary history;
- taxonomy beyond the common name "Autogen".

These parameters should remain flexible until a specific setting requires
harder constraints.

== Design Principles to Preserve

=== Biological Rather Than Magical

Whenever possible, unusual abilities should have a biological explanation
rather than a magical one.

=== Alien Anatomy, Familiar Personhood

The body may be radically nonhuman, but it must still allow ordinary
interaction with objects, environments, and other characters: an Autogen
should be able to hold a weapon, use tools, open a door, write, and operate
machinery. Likewise, it should remain recognizably a person, with its own
motives, relationships, flaws, and individuality.

=== No Mandatory Dwarf Clichés

Do not reintroduce beards, mines, axes, underground life, or similar traits
simply because they are traditional.

=== Continuity Without Immortality

Succession preserves meaningful parts of a person, but it is not
immortality. Something is always lost.

=== Inheritance Without Determinism

Inherited memories and the elder's testament should influence a successor
without determining its personality or the course of its life.

=== Shaping Is Final

Stone that has been softened once can never be softened again. Avoid adding
exceptions: the permanence of worked stone is what gives Autogen craft its
meaning.

=== Mineral Does Not Mean Stone

The mineralized body is living tissue, not animated rock.

=== Society Is Necessary

The life cycle should create dependence on others and lasting relationships,
rather than making society optional.

=== The Past Matters, but Fades

Inherited memory should be strong enough to create real continuity, but lossy
enough that history remains history.
]
