import {Test} from "./test";
import {CommonResource} from "./common";

type ColumnPart = {
    tests?: Test[]
}
export type Column = CommonResource & ColumnPart
