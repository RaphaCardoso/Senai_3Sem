const User = require("../models/User");

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

            const valid = await User.findById(id)

            if (valid) {
                return await User.findByIdAndUpdate(id, userToUpdate)
            }

            return null;

        } catch (error) {
            throw new Error('Ocorreu um erro ao Atulizar User')
        }
    },

    getById: async (id) => {
        try {

            const user = await User.findById(id)

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
            return await User.find();
        } catch (error) {
            throw new Error('Ocorreu um erro.')
        }
    },

    delete: async (id) => {
        try {

            const valid = await User.findById(id)

            if (valid) {
                return await User.findOneAndDelete(id);
            }

            return null;

        } catch (error) {
            throw new Error('Ocorreu um erro ao deletar o user')
        }
    }

}

module.exports = userService