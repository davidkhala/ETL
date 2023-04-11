import {Table} from "./table";
import {CommonResource} from "./common";

type SourcePart = {
    database?: string
    schema?: string
    tables: Table
}
export type Source = CommonResource & SourcePart
