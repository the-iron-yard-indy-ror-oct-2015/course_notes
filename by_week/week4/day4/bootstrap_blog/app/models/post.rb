class Post

  attr_accessor :id, :title, :body, :author, :created_at

  def initialize(args)
    self.id         = args[:id]
    self.title      = args[:title]
    self.body       = args[:body]
    self.author     = args[:author]
    self.created_at = args[:created_at] || Time.now
  end

  def self.all
    unless defined?(@posts)
      @posts = [
        Post.new(
          id: 1,
          title:  "The Apes and The Two Travelers",
          author: "Aesop",
          body: %q(
            Two men were travelling together, one of whom never spoke the truth, whereas the other never told a lie: and they came in the course of their travels to the land of Apes.

            The King of the Apes, hearing of their arrival, ordered them to be brought before him; and by way of impressing them with his magnificence, he received them sitting on a throne, while the Apes, his subjects, were ranged in long rows on either side of him.

            When the Travellers came into his presence he asked them what they thought of him as a King.

            The lying Traveller said, "Sire, every one must see that you are a most noble and mighty monarch."

            "And what do you think of my subjects?" continued the King.

            "They," said the Traveller, "are in every way worthy of their royal master."

            The Ape was so delighted with his answer that he gave him a very handsome present.

            The other Traveller thought that if his companion was rewarded so splendidly for telling a lie, he himself would certainly receive a still greater reward for telling the truth; so, when the Ape turned to him and said, "And what, sir, is your opinion?" he replied, "I think you are a very fine Ape, and all your subjects are fine Apes too."

            The King of the Apes was so enraged at his reply that he ordered him to be taken away and clawed to death.
          ),
          created_at:   rand(6).months.ago
        ),
        Post.new(
          id: 2,
          title: "Plymouth Rock and the Pilgrims",
          author: "Mark Twain",
          body: %q(
            I rise to protest. I have kept still for years; but really I think there is no sufficient justification for this sort of thing. What do you want to celebrate those people for? - those ancestors of yours of 1620 - the Mayflower tribe, I mean. What do you want to celebrate them for? Your pardon: the gentleman at my left assures me that you are not celebrating the Pilgrims themselves, but the landing of the Pilgrims at Plymouth rock on the 22d of December. So you are celebrating their landing. Why, the other pretext was thin enough, but this is thinner than ever; the other was tissue, tinfoil, fish-bladder, but this is gold-leaf.  Celebrating their lauding! What was there remarkable about it, I would like to know? What can you be thinking of? Why, those Pilgrims had been at sea three or four months. It was the very middle of winter: it was as cold as death off Cape Cod there. Why shouldn't they come ashore? If they hadn't landed there would be some reason for celebrating the fact: It would have been a case of monumental leatherheadedness which the world would not willingly let die. If it had been you, gentlemen, you probably wouldn't have landed, but you have no shadow of right to be celebrating, in your ancestors, gifts which they did not exercise, but only transmitted. Why, to be celebrating the mere landing of the Pilgrims - to be trying to make out that this most natural and simple and customary procedure was an extraordinary circumstance - a circumstance to be amazed at, and admired, aggrandized and glorified, at orgies like this for two hundred and sixty years - hang it, a horse would have known enough to land; a horse - Pardon again; the gentleman on my right assures me that it was not merely the landing of the Pilgrims that we are celebrating, but the Pilgrims themselves. So we have struck an inconsistency here - one says it was the landing, the other says it was the Pilgrims. It is an inconsistency characteristic of your intractable and disputatious tribe, for you never agree about anything but Boston.  Well, then, what do you want to celebrate those Pilgrims for? They were a mighty hard lot - you know it. I grant you, without the slightest unwillingness, that they were a deal more gentle and merciful and just than were the people of Europe of that day; I grant you that they are better than their predecessors. But what of that? - that is nothing.  People always progress. You are better than your fathers and grandfathers were (this is the first time I have ever aimed a measureless slander at the departed, for I consider such things improper). Yes, those among you who have not been in the penitentiary, if such there be, are better than your fathers and grandfathers were; but is that any sufficient reason for getting up annual dinners and celebrating you? No, by no means - by no means. Well, I repeat, those Pilgrims were a hard lot. They took good care of themselves, but they abolished everybody else's ancestors. I am a border-ruffian from the State of Missouri. I am a Connecticut Yankee by adoption. In me, you have Missouri morals, Connecticut culture; this, gentlemen, is the combination which makes the perfect man. But where are my ancestors?  Whom shall I celebrate? Where shall I find the raw material?

            My first American ancestor, gentlemen, was an Indian - an early Indian.  Your ancestors skinned him alive, and I am an orphan. Not one drop of my blood flows in that Indian's veins today. I stand here, lone and forlorn, without an ancestor. They skinned him! I do not object to that, if they needed his fur; but alive, gentlemen-alive! They skinned him alive - and before company! That is what rankles. Think how he must have felt; for he was a sensitive person and easily embarrassed. If he had been a bird, it would have been all right, and no violence done to his feelings, because he would have been considered "dressed." But he was not a bird, gentlemen, he was a man, and probably one of the most undressed men that ever was. I ask you to put yourselves in his place.  I ask it as a favor; I ask it as a tardy act of justice; I ask it in the interest of fidelity to the traditions of your ancestors; I ask it that the world may contemplate, with vision unobstructed by disguising swallow-tails and white cravats, the spectacle which the true New England Society ought to present. Cease to come to these annual orgies in this hollow modern mockery - the surplusage of raiment. Come in character; come in the summer grace, come in the unadorned simplicity, come in the free and joyous costume which your sainted ancestors provided for mine.

            Later ancestors of mine were the Quakers William Robinson, Marmaduke Stevenson, et al. Your tribe chased them out of the country for their religion's sake; promised them death if they came back; for your ancestors had forsaken the homes they loved, and braved the perils of the sea, the implacable climate, and the savage wilderness, to acquire that highest and most precious of boons, freedom for every man on this broad continent to worship according to the dictates of his own conscience - and they were not going to allow a lot of pestiferous Quakers to interfere with it. Your ancestors broke forever the chains of political slavery, and gave the vote to every man in this wide land, excluding none! - none except those who did not belong to the orthodox church. Your ancestors - yes, they were a hard lot; but, nevertheless, they gave us religious liberty to worship as they required us to worship, and political liberty to vote as the church required; and so I the bereft one, I the forlorn one, am here to do my best to help you celebrate them right.

            The Quaker woman Elizabeth Hooton was an ancestress of mine. Your people were pretty severe with her you will confess that. But, poor thing! I believe they changed her opinions before she died, and took her into their fold; and so we have every reason to presume that when she died she went to the same place which your ancestors went to. It is a great pity, for she was a good woman. Roger Williams was an ancestor of mine.  I don't really remember what your people did with him. But they banished him to Rhode Island, anyway. And then, I believe, recognizing that this was really carrying harshness to an unjustifiable extreme, they took pity on him and burned him. They were a hard lot! All those Salem witches were ancestors of mine! Your people made it tropical for them.  Yes, they did; by pressure and the gallows they made such a clean deal with them that there hasn't been a witch and hardly a halter in our family from that day to this, and that is one hundred and eighty-nine years. The first slave brought into New England out of Africa by your progenitors was an ancestor of mine - for I am of a mixed breed, an infinitely shaded and exquisite Mongrel. I'm not one of your sham meerschaums that you can color in a week. No, my complexion is the patient art of eight generations. Well, in my own time, I had acquired a lot of my kin - by purchase, and swapping around, and one way and another - and was getting along very well. Then, with the inborn perversity of your lineage, you got up a war, and took them all away from me. And so, again am I bereft, again am I forlorn; no drop of my blood flows in the veins of any living being who is marketable.

            O my friends, hear me and reform! I seek your good, not mine. You have heard the speeches. Disband these New England societies - nurseries of a system of steadily augmenting laudation and hosannaing, which; if persisted in uncurbed, may some day in the remote future beguile you into prevaricating and bragging. Oh, stop, stop, while you are still temperate in your appreciation of your ancestors! Hear me, I beseech you; get up an auction and sell Plymouth Rock! The Pilgrims were a simple and ignorant race. They never had seen any good rocks before, or at least any that were not watched, and so they were excusable for hopping ashore in frantic delight and clapping an iron fence around this one. But you, gentlemen, are educated; you are enlightened; you know that in the rich land of your nativity, opulent New England, overflowing with rocks, this one isn't worth, at the outside, more than thirty-five cents. Therefore, sell it, before it is injured by exposure, or at least throw it open to the patent-medicine advertisements, and let it earn its taxes:

            Yes, hear your true friend-your only true friend - list to his voice.  Disband these societies, hotbeds of vice, of moral decay - perpetuators of ancestral superstition. Here on this board I see water, I see milk, I see the wild and deadly lemonade. These are but steps upon the downward path. Next we shall see tea, then chocolate, then coffee - hotel coffee.  A few more years - all too few, I fear - mark my words, we shall have cider!  Gentlemen, pause ere it be too late. You are on the broad road which leads to dissipation, physical ruin, moral decay, gory crime and the gallows! I beseech you, I implore you, in the name of your anxious friends, in the name of your suffering families, in the name of your impending widows and orphans, stop ere it be too late. Disband these New England societies, renounce these soul-blistering saturnalia, cease from varnishing the rusty reputations of your long-vanished ancestors - the super-high-moral old iron-clads of Cape Cod, the pious buccaneers of Plymouth Rock - go home, and try to learn to behave!

            However, chaff and nonsense aside, I think I honor and appreciate your Pilgrim stock as much as you do yourselves, perhaps; and I endorse and adopt a sentiment uttered by a grandfather of mine once - a man of sturdy opinions, of sincere make of mind, and not given to flattery. He said: "People may talk as they like about that Pilgrim stock, but, after all's said and done, it would be pretty hard to improve on those people; and, as for me, I don't mind coming out flatfooted and saying there ain't any way to improve on them - except having them born in, Missouri!"
          ),
          created_at:   rand(6).months.ago
        ),
        Post.new(
          id: 3,
          title:  "The Lady in Pink",
          author: "Sir Arthur Conan Doyle",
          body: %q(
            Two men were travelling together, one of whom never spoke the truth, whereas the other never told a lie: and they came in the course of their travels to the land of Apes.

            The King of the Apes, hearing of their arrival, ordered them to be brought before him; and by way of impressing them with his magnificence, he received them sitting on a throne, while the Apes, his subjects, were ranged in long rows on either side of him.

            When the Travellers came into his presence he asked them what they thought of him as a King.

            The lying Traveller said, "Sire, every one must see that you are a most noble and mighty monarch."

            "And what do you think of my subjects?" continued the King.

            "They," said the Traveller, "are in every way worthy of their royal master."

            The Ape was so delighted with his answer that he gave him a very handsome present.

            The other Traveller thought that if his companion was rewarded so splendidly for telling a lie, he himself would certainly receive a still greater reward for telling the truth; so, when the Ape turned to him and said, "And what, sir, is your opinion?" he replied, "I think you are a very fine Ape, and all your subjects are fine Apes too."

            The King of the Apes was so enraged at his reply that he ordered him to be taken away and clawed to death.
          ),
          created_at:   rand(6).months.ago
        ),
        Post.new(
          id: 4,
          title:  "Consider the Lobster",
          author: "David Foster Wallace",
          body: %q(
            Two men were travelling together, one of whom never spoke the truth, whereas the other never told a lie: and they came in the course of their travels to the land of Apes.

            The King of the Apes, hearing of their arrival, ordered them to be brought before him; and by way of impressing them with his magnificence, he received them sitting on a throne, while the Apes, his subjects, were ranged in long rows on either side of him.

            When the Travellers came into his presence he asked them what they thought of him as a King.

            The lying Traveller said, "Sire, every one must see that you are a most noble and mighty monarch."

            "And what do you think of my subjects?" continued the King.

            "They," said the Traveller, "are in every way worthy of their royal master."

            The Ape was so delighted with his answer that he gave him a very handsome present.

            The other Traveller thought that if his companion was rewarded so splendidly for telling a lie, he himself would certainly receive a still greater reward for telling the truth; so, when the Ape turned to him and said, "And what, sir, is your opinion?" he replied, "I think you are a very fine Ape, and all your subjects are fine Apes too."

            The King of the Apes was so enraged at his reply that he ordered him to be taken away and clawed to death.
          ),
          created_at:   rand(6).months.ago
        ),
        Post.new(
          id: 5,
          title:  "Dr. Strangelove (or, how I learned to stop worrying and love the bomb)",
          author: "Stanley Kubrick",
          body: %q(
            Two men were travelling together, one of whom never spoke the truth, whereas the other never told a lie: and they came in the course of their travels to the land of Apes.

            The King of the Apes, hearing of their arrival, ordered them to be brought before him; and by way of impressing them with his magnificence, he received them sitting on a throne, while the Apes, his subjects, were ranged in long rows on either side of him.

            When the Travellers came into his presence he asked them what they thought of him as a King.

            The lying Traveller said, "Sire, every one must see that you are a most noble and mighty monarch."

            "And what do you think of my subjects?" continued the King.

            "They," said the Traveller, "are in every way worthy of their royal master."

            The Ape was so delighted with his answer that he gave him a very handsome present.

            The other Traveller thought that if his companion was rewarded so splendidly for telling a lie, he himself would certainly receive a still greater reward for telling the truth; so, when the Ape turned to him and said, "And what, sir, is your opinion?" he replied, "I think you are a very fine Ape, and all your subjects are fine Apes too."

            The King of the Apes was so enraged at his reply that he ordered him to be taken away and clawed to death.
          ),
          created_at:   rand(6).months.ago
        )
      ]
    end
    @posts
  end

  def self.find(id)
    all.select{|post| post.id == id}.first
  end


end
