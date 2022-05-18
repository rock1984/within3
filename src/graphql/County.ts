import { extendType, nonNull, objectType, stringArg } from "nexus";

export const County = objectType({
    name: "County",
    definition(t) {
        t.nonNull.int("id");
        t.nonNull.string("name");
    },
});

export const CountyQuery = extendType({
    type: "Query",
    definition(t) {
        t.nonNull.list.nonNull.field("counties", {
            type: "County",
            resolve(parent, args, context, info) {
                return context.countiesRepository().find();
            },
        });
    },
});
