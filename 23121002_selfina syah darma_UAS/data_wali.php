<!DOCTYPE html>
<html>
<head>
	<title>Data Admin</title>
	<style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }
        .container {
            width: 80%;
            margin: auto;
        }
        .header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 20px;
        }
        .header button {
        	background-color: red;
            color: white;
            border: red;
            padding: 10px 20px;
            cursor: pointer;
            border-radius: 5px;
             box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
             display: inline-block;
            text-align: center;
            font-size: 16px;
        }
        .header button:hover {
            background-color: red;
        }
        table {
            width: 100%;
            border-collapse: collapse;
        }
        table th, table td {
            border: 1px solid #ddd;
            text-align: center;
            padding: 8px;
        }
        table th {
            background-color: #ffc107;
            color: black;
        }
        table td {
            background-color: #f9f9f9;
      
        }
        .actions button {
            padding: 5px 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .actions .update {
            background-color: #28a745;
            color: white;
        }
        .actions .delete {
            background-color: #dc3545;
            color: white;
        }

    </style>
</head>
<?php include "koneksi.php"; ?>
<body>
	<h1>Menampilkan Data Wali</h1>
	
	<div><a href="tambah_wali.php">+ Tambah Data </a></div>
	<br>
	<table border="1">
		<tr>
			<thead>
					<th rowspan="2">No</th>
                    <th rowspan="2">Nama Siswa</th>
                    <th align="center" colspan="2">Nama Lengkap</th>
                    <th rowspan="2">Alamat</th>
                    <th rowspan="2">No Telpon</th>
                    <th rowspan="2">Penghasilan</th>
                    <th rowspan="2">Tempat Tinggal</th>
                    <th rowspan="2">Keterangan</th>
                    <th rowspan="2">Aksi</th> 
                </tr>
                <tr>
                    <th>Nama Ayah</th>
                    <th>Nama Ibu</th>
                </tr>
            </thead>

		
		<?php 
			$data = mysqli_query($koneksi, "SELECT * FROM tbl_wali");
			$nomor = 1;
			while ($tampil = mysqli_fetch_array($data)) {
		?>
		<tr>
			<td><?php echo $nomor++; ?></td>
			<td><?php echo $tampil['nama_siswa']; ?></td>
			<td><?php echo $tampil['nama_ayah']; ?></td>
			<td><?php echo $tampil['nama_ibu']; ?></td>
			<td><?php echo $tampil['alamat_wali']; ?></td>
			<td><?php echo $tampil['no_telepon']; ?></td>
			<td><?php echo $tampil['penghasilan_wali']; ?></td>
			<td><?php echo $tampil['tempat_tinggal']; ?></td>
			<td><?php echo $tampil['keterangan_wali']; ?></td>
			<td>
				<a href="edit_walii.php?id=<?php echo $tampil['id_wali'];?>">UPDATE</a> | <a href="hapus_wali.php?id=<?php echo $tampil['id_wali'];?>">DELETE</a>
			</td>
		</tr>
		<?php } ?>
	</table>
</body>
</html>