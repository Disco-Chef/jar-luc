### The Facepalm Jar is here!

We've all been there, coding away at our workstations, squishing bugs when at some point, something very basic escapes us, and we are only reminded when the error appears.

Such rookie mistakes, or rather 'happy-accidents', happen to all of us, at all seniority levels. Hence, I thought to make a website (and API) where developers (et al) can proudly post their recent Facepalm moments!

We've all seen and used the Jean-Luc image/gif of him facepalming, or Sokka's red forehead after multiple continuous facepalms. Let this be a safe haven for our little accidents!

Inspired by the concept of a Swear-Jar, here is the Facepalm-Jar, or rather, in honour of the captain himself Jar-Luc!

### Use instructions:

#### Via Browser:
Visit [Jar-Luc](https://jar-luc.herokuapp.com/), where you can use the form to post your *Palmy*, as we have come to name them, with a description of what made you slap yer face, and, if you are so inclined, your identity/pseudonym.

#### Via curl:
```
  curl -X POST -H 'Content-Type: application/json' -d '{ "description": "Forgot to migrate after creating a new model", "author": "Aristotle" }' https://jar-luc.herokuapp.com/api/v1/palmies
```

Rails app generated with [lewagon/rails-templates](https://github.com/lewagon/rails-templates), created by the [Le Wagon](https://www.lewagon.com) team.
