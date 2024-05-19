import { Sequelize, DataTypes, Model} from "sequelize";

const sequelize = new Sequelize({
    dialect: 'sqlite',
    storage: 'example.db'
});

class User extends Model {}
User.init({
    name: {
        type: DataTypes.STRING,
        allowNull: false
    }
}, {
    sequelize,
    modelName: 'User'
});

class Post extends Model {}
Post.init({
    title: {
        type: DataTypes.STRING,
        allowNull: false
    },
    content: {
        type: DataTypes.STRING,
        allowNull: false
    }
}, {
    sequelize,
    modelName: 'Post'
});

User.hasMany(Post, {foreignKey: 'userId'});
Post.belongsTo(User, {foreignKey: 'userId'});

export {User, Post, sequelize}