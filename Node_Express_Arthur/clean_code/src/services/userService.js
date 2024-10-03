// app.js -> router.js -> userRoutes.js -> userController -> userService -> model -> DATABASE

const User = require("../models/user");


const userService = {
    create: async (user) => {
        try {
            return await User.create(user)
        } catch (error) {
            throw new Error('Ocorreu um erro ao criar user');
        }
    },

    update: async (id, userToUpdate) => {
        try {
            const user = await User.findByPk(id)

            if (!user) {
                return null;
            }

            await user.update(userToUpdate);
            await user.save();
            return user;

        } catch (error) {
            throw new Error('Ocorreu um erro ao Atulizar User')
        }
    },

    getById: async (id) => {
        try {

            const user = await User.findByPk(id)

            if (!user) {
                return null;
            }

            return user;

        } catch (error) {
            throw new Error('Ocorreu um erro.') // throw jogar pra cima, de acordo com a camada
        }
    },

    getAll: async () => {
        try {
            return await User.findAll();
        } catch (error) {
            throw new Error('Ocorreu um erro.')
        }
    },

    delete: async (id) => {
        try {

            const user = await User.findByPk(id);

            if (!user) {
                return null;
            }

            await user.destroy();
            return user;

        } catch (error) {
            throw new Error('Ocorreu um erro ao deletar o user')
        }
    }


}

module.exports = userService;