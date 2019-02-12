<select name="testId" required>

	<option selected="selected" value="">Select Test</option>

    <?php foreach ($pdo->query('SELECT id, name FROM tests ORDER BY name') as $row): ?>

	    <option value="<?= $row[0] ?>" name="testId">
	    	<?= $row[1] ?>
	    </option>

	<?php endforeach; ?>

</select>