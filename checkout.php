<!DOCTYPE html>
<html>

<head>
    <title>Form Pendaftaran Peserta Pelatihan</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
</head>

<body>
    <div class="container">
        <h2>Form Pendaftaran Peserta Pelatihan</h2>

        <form action="cetak.php" method="post">
            <div class="form-group">
                <label>Nama:</label>
                <input type="text" name="name" class="form-control" placeholder="Masukan Nama" required />
            </div>
            <div class="form-group">
                <label>No HP:</label>
                <input type="text" name="nohp" class="form-control" placeholder="Masukan No Hp" required />
            </div>
            <div class="form-group">
                <label>Pelatihan:</label>
                <select id="motor" name="namamotor" class="form-control" required>
                    <option value="">motor
                    </option>
                    <option value="Grand Filano Hybrid Connected">Grand Filano Hybrid Connected</option>
                    <option value="Aerox">Aerox</option>
                    <option value="Vino">Vino</option>
                    <option value="beat">Beat</option>
                    <option value="mio">Mio</option>
                    <option value="Freego">Freego</option>
                    <option value="beat street">Beat Street</option>
                    <option value="Harpindo">X-ride 125</option>
                    
                </select>
   
            <button type="submit" name="submit" class="btn btn-primary">Submit</button>
            <a href="dashboard.php" class="btn btn-info text-white">Kembali</a>
        </form>
    </div>
</body>

</html>