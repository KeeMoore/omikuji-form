<!DOCTYPE html>
<html>
<head>
    <title>Omikuji Form</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="card">
                <div class="card-header text-center">
                    <h1>Send an Omikuji!</h1>
                </div>
                <div class="card-body">
                    <form action="/omikuji/process" method="POST">
                        <div class="form-group mb-3">
                            <%--@declare id="number"--%><label for="number">Pick any number from 5 to 25:</label>
                            <input type="number" class="form-control" name="number" min="5" max="25" required>
                        </div>
                        <div class="form-group mb-3">
                            <%--@declare id="city"--%><label for="city">Enter the name of any city:</label>
                            <input type="text" class="form-control" name="city" required>
                        </div>
                        <div class="form-group mb-3">
                            <%--@declare id="person"--%><label for="person">Enter the name of any real person:</label>
                            <input type="text" class="form-control" name="person" required>
                        </div>
                        <div class="form-group mb-3">
                            <%--@declare id="hobby"--%><label for="hobby">Enter a professional endeavor or hobby:</label>
                            <input type="text" class="form-control" name="hobby" required>
                        </div>
                        <div class="form-group mb-3">
                            <%--@declare id="livingthing"--%><label for="livingThing">Enter any type of living thing:</label>
                            <input type="text" class="form-control" name="livingThing" required>
                        </div>
                        <div class="form-group mb-3">
                            <%--@declare id="nicemessage"--%><label for="niceMessage">Say something nice to someone:</label>
                            <input type="text" class="form-control" name="niceMessage" required>
                        </div>
                        <button type="submit" class="btn btn-primary w-100">Send</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
