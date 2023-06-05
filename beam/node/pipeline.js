import * as beam from "apache-beam";

export function createPipeline(array, reducer) {
    // A pipeline is simply a callable that takes a root object.
    return (root) => root.apply(beam.create(array)).map(reducer);
}

export function printReducer(element) {
    console.log(element);
    return element;
}