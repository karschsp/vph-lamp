include apache
notify { 'my_message':
  message => hiera('my_message'),
}
