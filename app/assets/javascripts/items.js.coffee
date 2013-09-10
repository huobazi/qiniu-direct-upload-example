# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
#jQuery ->
  #$('#new_item').fileupload
    #dataType: "json"
    #multipart: true
    #formData: (form) ->
      #data = form.serializeArray()
      #fh = this.files[0]
      #fileUniqKey = 'photographs/' + generate_random_string(20) + ":"+ fh.name
      #data.push({name: 'key', value: fileUniqKey})
      #return data
    #add: (e, data) ->
      #types = /(\.|\/)(gif|jpe?g|png)$/i
      #file = data.files[0]
      #if types.test(file.type) || types.test(file.name)
        #data.context = $(tmpl("template-upload", file))
        #$('#new_item').append(data.context)
        #data.submit()
      #else
        #alert("#{file.name} is not a gif, jpeg, or png image file")
    #progress: (e, data) ->
      #if data.context
        #progress = parseInt(data.loaded / data.total * 100, 10)
        #data.context.find('.bar').css('width', progress + '%')
    #done: (e,data) ->
      #console.log(data.result)
      #$.ajax(url: "/").done (result) ->
        #console.log('callback')
$(document).ready ->
  photoForm = $("form#photograph-uploader")
  if photoForm.length > 0
    photoForm.QiniuUploader
      progressBarTarget: photoForm.find(".dropzone .bars")
      beforeAdd: (file) ->
        file.type == "image/jpeg"
    photoForm.bind "ajax:success", (e, data) ->
      console.log(data)
    photoForm.bind "ajax:failure", (e, data) ->
      console.log(data)
