let isMobile = false;
let mascota_seleccionada='';
function guardarMascota( _id = null ) {
  
  let form = document.getElementById("form-mascota");
  const formData = new FormData(form);
   
  for (let pair of formData.entries()) {
    console.log(pair[0]+ ' = ' + pair[1]); 
  }

  fetch('/guardarMascota', {
    method: 'POST',
    body: formData
  }).then(response => {
    if (!response.ok) {
      throw new Error('Error en la petición');
    }
    return response.json();
  }).then(data => {
    console.log('Respuesta del backend:');
    console.log(data);
    
    let _icon = "success";
    if( !data.success ){
      _icon = "error";
    }

    Swal.fire({
      title: "Alerta",
      text: data.mensaje,
      icon: _icon
    }).then((result) => {
      if (result.isConfirmed) {
        if( _icon == "success" ){
          location.reload();
        }        
      }
    });

  }).catch(error => {
    console.error('Error:', error);
  });

}

function actualizarMascota( _id = null ) {
  if( _id == null )return;
  let _dt = _id.split("-");
  let form = document.getElementById("form-mascota-"+_dt[2]);
  const formData = new FormData(form);
  formData.append("idMascota", _dt[2]);

  for (let pair of formData.entries()) {
    console.log(pair[0]+ ' = ' + pair[1]); 
  }

  fetch('/actualizarMascota', {
    method: 'POST',
    body: formData
  }).then(response => {
    if (!response.ok) {
      throw new Error('Error en la petición');
    }
    return response.json();
  }).then(data => {
    console.log('Respuesta del backend:');
    console.log(data);
    
    let _icon = "success";
    if( !data.success ){
      _icon = "error";
    }

    Swal.fire({
      title: "Alerta",
      text: data.mensaje,
      icon: _icon
    }).then((result) => {
      if (result.isConfirmed) {
        if( _icon == "success" ){
          location.reload();
        }        
      }
    });

  }).catch(error => {
    console.error('Error:', error);
  });

}

function borrarMascotaConfirmado(){
  const formData = new FormData();
  formData.append("idMascota", mascota_seleccionada);

  fetch('/borrarMascota', {
    method: 'POST',
    body: formData
  }).then(response => {
    if (!response.ok) {
      throw new Error('Error en la petición');
    }
    return response.json();
  }).then(data => {
        
    let _icon = "success";
    if( !data.success ){
      _icon = "error";
    }

    Swal.fire({
      title: "Alerta",
      text: data.mensaje,
      icon: _icon
    }).then((result) => {
      if (result.isConfirmed) {
        if( _icon == "success" ){
          location.reload();
        }        
      }
    });

  }).catch(error => {
    console.error('Error:', error);
  });

}

function borrarMascota( _id = null ){
  if( _id == null )return;
  let _dt = _id.split("-");
  mascota_seleccionada = _dt[2];
  
  Swal.fire({
    title: 'Estas seguro/a de borrar la mascota ?',
    showDenyButton: true,
    showCancelButton: false,
    confirmButtonText: 'Si',
    denyButtonText: 'No',
    customClass: {
      actions: 'my-actions',
      cancelButton: 'order-1 right-gap',
      confirmButton: 'order-2',
      denyButton: 'order-3',
    },
  }).then((result) => {
    if (result.isConfirmed) {
      borrarMascotaConfirmado();
    }
  })

}