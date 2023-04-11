export type Test = TestNotNull | TestUnique | TestValues | TestRelationships | (CommonTest & { test_name: TestName })

type CommonTest = {
    name?: string // In case, dbt's default approach results in some wonky (and ugly) test names
    config: {
        where?: string

        severity?: 'error' | 'warn'
        error_if?: string
        warn_if?: string // Conditional expressions can be any comparison logic that is supported by your SQL syntax
    }
}
type TestName = 'not_null' | 'unique' | 'accepted_values' | 'relationships'
export type TestNotNull = 'not_null'

export type TestUnique = 'unique' | {
    unique: CommonTest & {
        column_name?: string // https://docs.getdbt.com/reference/resource-properties/tests#testing-an-expression
    }
}

export type TestValues = 'accepted_values' | {
    accepted_values: CommonTest & {
        values: string[]
    }
}

export type TestRelationships = {
    relationships: {
        to: string // The `to` argument accepts a Relation – you can pass it a `ref` to a model (e.g. ref('customers')), or a `source` (e.g. source('jaffle_shop', 'customers'))
        field: string // parent table's column
    }
}


