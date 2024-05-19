import pubsub from "../database/pubsubUtil";

const Subscription = {
    bookAdded: { subscribe: () => pubsub.asyncIterator('BOOK_ADDED') }
}

export default Subscription;
