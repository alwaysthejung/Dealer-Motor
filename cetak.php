<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "motor";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $name = $conn->real_escape_string($_POST['name']);
    $phone = $conn->real_escape_string($_POST['nohp']);
    $motor = $conn->real_escape_string($_POST['namamotor']);

    $sql = "SELECT Harga FROM motors WHERE JenisMotor = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("s", $motor);
    $stmt->execute();
    $stmt->bind_result($price);
    $stmt->fetch();
    $stmt->close();

    if ($price) {
        $sql = "INSERT INTO pelanggan (NamaPelanggan, NomorTelepon, JenisMotor) VALUES (?, ?, ?)";
        $stmt = $conn->prepare($sql);
        $stmt->bind_param("sss", $name, $phone, $motor);
        $stmt->execute();
        $stmt->close();

        $message = "
        Dealer Motor 
        
        Nama: $name
        
        No hp: $phone
        
        
        ==================================
        Nama Produk:  $motor
        Total Belanjaan Anda: $price
        
        Terima kasih ";

        $curl = curl_init();
        curl_setopt_array($curl, [
            CURLOPT_URL => 'https://api.fonnte.com/send',
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_POST => true,
            CURLOPT_POSTFIELDS => [
                'target' => $phone,
                'message' => $message,
                'countryCode' => '62',
            ],
            CURLOPT_HTTPHEADER => [
                'Authorization: dcsjcg'
            ],
        ]);

        $response = curl_exec($curl);

        if ($response === false) {
            $curlError = curl_error($curl);
            curl_close($curl);
            die('Curl failed: ' . $curlError);
        }

        curl_close($curl);
        echo "<script>alert('Berhasil Mengirim pesan Whatsapp ke Nomor Pelanggan');window.location.href='dashboard.php';</script>";
    } else {
        echo "Failed to retrieve the price for the selected motor.";
    }

    $conn->close();
}
?>
