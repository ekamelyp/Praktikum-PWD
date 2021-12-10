<?php
// memanggil library FPDF
require('fpdf/fpdf.php');
// intance object dan memberikan pengaturan halaman PDF
$pdf = new FPDF('l', 'mm', 'A5');
// membuat halaman baru
$pdf->AddPage();
// setting jenis font yang akan digunakan
$pdf->SetFont('Arial', 'B', 16);
// mencetak string
$pdf->Cell(190, 7, 'PROGRAM STUDI TEKNIK INFORMATIKA', 0, 1, 'C');
$pdf->SetFont('Arial', 'B', 12);
$pdf->Cell(190, 7, 'DAFTAR MAHASISWA MAKUL PEMROGRAMAN WEB DINAMIS', 0, 1, 'C');
// Memberikan space kebawah agar tidak terlalu rapat
$pdf->Cell(10, 7, '', 0, 1);
$pdf->SetFont('Arial', 'B', 10);
$pdf->Cell(25, 6, 'NIM', 1, 0);
$pdf->Cell(35, 6, 'NAMA', 1, 0);
$pdf->Cell(30, 6, 'JENIS KELAMIN', 1, 0);
$pdf->Cell(35, 6, 'ALAMAT', 1, 0);
$pdf->Cell(35, 6, 'TANGGAL LAHIR', 1, 0);
$pdf->Cell(15, 6, 'IPK', 1, 1);
$pdf->SetFont('Arial', '', 10);
include 'koneksi.php';
$mahasiswa = mysqli_query($conn, "SELECT * FROM mahasiswa");
while ($row = mysqli_fetch_array($mahasiswa)) {
    $pdf->Cell(25, 6, $row['nim'], 1, 0);
    $pdf->Cell(35, 6, $row['nama'], 1, 0);
    $pdf->Cell(30, 6, $row['jk'], 1, 0);
    $pdf->Cell(35, 6, $row['alamat'], 1, 0);
    $pdf->Cell(35, 6, $row['tgllhr'], 1, 0);
    $pdf->Cell(15, 6, $row['ipk'], 1, 1);
}
$pdf->Output();
