import {Column} from "./column";
import {Test} from "./test";
import {CommonResource} from "./common";

type TablePart = {
    identifier?: string
    tests?: Test[]
    columns?: Column[]
}
export type Table = CommonResource & TablePart

