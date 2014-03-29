if (Posts.find().count() === 0) {
  Posts.insert({
    title: 'Watch Out for Meteor',
    author: 'Raj Anand',
    url: 'http://rajanand02.github.io/articles/Watchout-for-meteor/'
  });
  Posts.insert({
    title: 'Crud in meteor',
    author: 'Raj Anand',
    url: 'http://rajanand02.github.io/articles/Simple-crud-app-in-meteor/'
  });
  Posts.insert({
    title: 'My github page',
    author: 'Raj Anand',
    url: 'http://github.com/rajanand02'
  });
}
