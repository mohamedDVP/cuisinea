<?php
    require_once('templates/header.php');
    require_once('lib/recipe.php');
    require_once('lib/category.php');
    require_once('lib/tools.php');

    $messages = [];
    $errors = [];


    $categories = getCategories($pdo);

    if(isset($_POST['saveRecipe'])){

        // Si un fichier a été envoyé
        if(isset($_FILES['file']['tmp_name']) && $_FILES['file']['tmp_name']!= ""){
            // la méthode getimagesize retourne false si le fichier n'est pas une image
            $checkImage = getimagesize($_FILES['file']['tmp_name']);
            if($checkImage !== false){
                // si c'est une image on traite
                $fileName = uniqid().'-'.$_FILES['file']['name'];
                move_uploaded_file($_FILES['file']['tmp_name'], _RECIPES_IMG_PATH_.$fileName);
            }
            else {
                $errors[] = "Le fichier n'est pas une image";
            }
        }
        $res = saveRecipe($pdo, $_POST['category'], $_POST['title'], $_POST['description'], $_POST['ingredients'], $_POST['instructions'], null);
        if ($res){
            $message[] = "La recette a bien été sauvegardée";
        } else {
            $errors[] = "La recette n'a pas pu être sauvegardée";
        }
    }
?>

    <h1>Ajouter une recette</h1>

    <?php foreach ($messages as $message) {?>
        <div class="alert alert-success" role="alert">
            <?= $message?>
        <?php }?>
    </div>
    <?php foreach ($errors as $error) {?>
        <div class="alert alert-danger" role="alert">
            <?= $error?>
        <?php }?>
    </div>
    <form method="POST" enctype="multipart/form-data">
        <div class="mb-3">
            <label for="title" class="form-label">Titre</label>
            <input type="text" name="title" id="title" class="form-control">
        </div>
        <div class="mb-3">
            <label for="description" class="form-label">Description</label>
            <textarea name="description" id="description" cols="30" rows="5" class="form-control"></textarea>
        </div>
        <div class="mb-3">
            <label for="ingredients" class="form-label">Ingredients</label>
            <textarea name="ingredients" id="ingredients" cols="30" rows="5" class="form-control"></textarea>
        </div>
        <div class="mb-3">
            <label for="instructions" class="form-label">Instructions</label>
            <textarea name="instructions" id="instructions" cols="30" rows="5" class="form-control"></textarea>
        </div>
        <div class="mb-3">
            <label for="category" class="form-label">Catégorie</label>
            <select name="category" id="category" class="form-select">
                <?php foreach ($categories as $category) {?>
                    <option value="<?= $category['id']?>"><?= $category['name']?></option>
                <?php }?>
            </select>
        </div>

        <div class="mb-3">
            <label for="file" class="form-label">Image</label>
            <input type="file" name="file" id="file">
        </div>
        <input type="submit" value="Enregistrer" name="saveRecipe" class="btn btn-primary">
    </form>

<?php
    require_once('templates/footer.php');
?>