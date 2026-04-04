# 'Tis but a Flesh Wound
### An Blog by Isaac Lindell

---

## Deploy in 5 minutes

### Prerequisites (install once)

| Tool | Install |
|---|---|
| Git | https://git-scm.com/downloads |
| GitHub CLI | `brew install gh` — or https://cli.github.com |
| Vercel CLI | `npm install -g vercel` |

Then authenticate:
```bash
gh auth login
vercel login
```

### One-shot deploy

```bash
cd SUPERMAN
bash DEPLOY.sh
```

That's it. Vercel auto-deploys on every `git push` from that point forward.

---

## Adding new posts

```bash
# 1. Copy the right template
cp stories/TEMPLATE-new-story.html stories/your-title.html

# 2. Edit the file — change title, date, eyebrow, paste content

# 3. Add it to the archive index
#    Open stories/index.html and add an <a> block

# 4. Push
git add .
git commit -m "Add: Your Post Title"
git push
```

Vercel deploys within ~30 seconds of every push.

---

## File structure

```
SUPERMAN/
├── index.html                  ← Homepage
├── vercel.json                 ← Clean URLs config
├── DEPLOY.sh                   ← One-shot deploy script
├── css/style.css               ← All styles
├── js/main.js                  ← Progress bar, read time, nav
├── stories/
│   ├── index.html              ← Stories archive
│   ├── dirt.html
│   ├── vietnam-story.html
│   ├── hunt-for-sam.html
│   ├── the-artist.html
│   ├── cash-flow.html
│   └── cereal-murder.html
├── think-pieces/
│   ├── index.html              ← Think Pieces archive
│   ├── goodness-think-piece.html
│   ├── beauty.html
│   ├── horror.html
│   ├── evil.html
│   ├── betrayal.html
│   ├── justice.html
│   ├── in-pursuit-of-good.html
│   ├── on-the-shortness-of-life.html
│   ├── dear-representatives.html
│   ├── ai-fatigue.html
│   ├── rip-charlie-kirk.html
│   ├── movie-talk.html
│   └── greatest-beer-run.html
├── poems/
│   ├── index.html              ← Poems archive
│   ├── sacrifice-poem.html
│   ├── don-quixote-poem.html
│   └── untitled-jan-2023.html
└── about/
    └── index.html
```

---

## CSS colour variables

```css
--bg:       #F8F8F6   /* Page background  */
--primary:  #0C3224   /* Racing Green     */
--secondary:#1A4A38   /* Club Green       */
--accent1:  #C8A96E   /* Paddock Gold     */
--accent2:  #A08040   /* Brass            */
--text:     #1A1A18   /* Ink              */
--muted:    #B0ADA6   /* Metadata grey    */
--border:   #E6E4DF   /* Dividers         */
```
