postsData = [
    {
        title: 'Introducing Telescope'
        author: 'Sacha Greif'
        url: 'http://sachagreif.com/introducing-telescope/'
    }
    {
        title: 'Meteor'
        author: 'Tom Coleman'
        url: 'http://meteor.com'
    }
    {
        title: 'The Meteor Book'
        author: 'Tom Coleman'
        url: 'http://themeteorbook.com'
    }
    {
      title: 'Meteor Docs'
      author: 'Tom Coleman'
      url: 'http://docs.meteor.com'
    }
]

for p in postsData
    p.createdAt = new Date().getTime()
    Posts.update({ title: p.title }, p, { upsert: true })