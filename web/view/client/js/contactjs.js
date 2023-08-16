function SendMail() {
    var params = {
        from_name: document.getElementById("fullname").value,
        email_id: document.getElementById("email_id").value,
        phone_id: document.getElementById("phone_id").value,
        subject_id: document.getElementById("subject_id").value,
        message: document.getElementById("content").value
    }
    emailjs.send("service_48gmw1d", "template_gp5vlwo", params).then(function (res) {
        alert("Message sent successfully!");
    })
}