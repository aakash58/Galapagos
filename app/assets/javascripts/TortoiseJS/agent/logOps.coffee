postSliderLogs = undefined
username = localStorage.getItem('user')
rightTop = document.getElementsByClassName('netlogo-export-wrapper')
if !localStorage.getItem('user')
  name = prompt('Please enter your name', 'Your name here')
  if name != null
    localStorage.setItem 'user', name
postSliderLogs = (name, oldValue, newValue) ->
  $.ajax(
    method: 'POST'
    url: '/sliderLogs'
    data:
      'user': 'texas-' + username
      'action': name
      'timeStamp': Date.now()
      'oldValue': oldValue
      'newValue': newValue).done (msg) ->
    console.log 'Written to Mongo: ' + msg
    return
  return