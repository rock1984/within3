import { extendType, objectType } from "nexus";

export const City = objectType({
    name: "City",
    definition(t) {
        t.nonNull.int("id");
        t.nonNull.string("name");
    },
});

export const CityQuery = extendType({
    type: "Query",
    definition(t) {
        t.nonNull.list.nonNull.field("cities", {
            type: "City",
            resolve(parent, args, context, info) {
                return context.citiesRepository().find();
            },
        });
    },
});