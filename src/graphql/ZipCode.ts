import { extendType, intArg, nonNull, objectType } from "nexus";

export const ZipCode = objectType({
    name: "ZipCode",
    definition(t) {
        t.nonNull.int("id");
        t.nonNull.int("zipCode");
        t.field("city", {
            type: "City"
        });
        t.field("county", {
            type: "County"
        });
    },
});

export const ZipCodeQuery = extendType({
    type: "Query",
    definition(t) {
        t.field("zipCode", {
            type: "ZipCode",
            args: {
                zipCode: nonNull(intArg()),
            },
            resolve(parent, args, context, info) {
                return context.zipCodesRepository().findByZipCode(args.zipCode);
            },
        });
    },
});