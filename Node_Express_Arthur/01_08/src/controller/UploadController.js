const multer = require('multer');
const sharp = require('sharp');
const fs = require('fs');
const path = require('path');

const uploadController = {

    uploadImage: async (req, res) => {

        //gatinho.png
        const imageName = req.file.originalname;

        // dados da imagem
        const imageData = req.file.buffer;

        //salvar a imagem original no disco 
        await sharp(imageData).toFile(`uploads/${imageName}`);
        // uploads/gatinho.png

        return res.status(200).json({
            msg: 'Imagem salva com sucesso!',
            status: 200
        });

    },

    listImages: async (req, res) => {

        fs.readdir('uploads/', (err, files) => {

            if (err) {
                res.status(500).json({
                    msg: "Erro ao listar imagens",
                });
            }

            const images = files.filter(
                (file) =>
                    file.endsWith(".jpg") || file.endsWith(".png") || file.endsWith(".jpeg")
            );

            res.send(images);

        });
    },

    getImage: (req, res) => {
        const imageName = req.params.imageName;

        // pq a pasta uploads está localizada na raiz do projeto
        const imagePath = path.join(__dirname, '..', '..', '..', 'uploads', imageName);

        return res.sendFile(imagePath);
    }

};

module.exports = uploadController;