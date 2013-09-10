# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$(document).ready ->
  photoForm = $("form#photograph-uploader")
  if photoForm.length > 0
    photoForm.QiniuUploader
      customCallbackData: {"xyz": 100}
      onFilesAdd: (file) ->
        if file.type != "image/jpeg"
          alert('please select image')
          return false
        else
          return true

    photoForm.bind "ajax:success", (e, data) ->
      console.log('success')
      console.log(data)

    photoForm.bind "ajax:failure", (e, data) ->
      console.log('failure')
      console.log(data)
