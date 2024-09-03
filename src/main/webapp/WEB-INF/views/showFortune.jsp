


<!DOCTYPE html>
<html>
<head>
    <title>Show Fortune</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
<div class="container mt-5">
    <div class="card">
        <div class="card-header">
            <h1>Here's Your Omikuji!</h1>
        </div>
        <div class="card-body">
            <p>In <span>${number}</span> years, you will live in <span>${city}</span> with <span>${person}</span> as your roommate, selling <span>${hobby}</span> for a living.</p>
            <p>The next time you see a <span>${livingThing}</span>, you will have good luck.</p>
            <p>Also, <span>${niceMessage}</span></p>
            <a href="${pageContext.request.contextPath}/omikuji" class="btn btn-secondary">Go Back</a>
        </div>
    </div>
</div>
</body>
</html>
