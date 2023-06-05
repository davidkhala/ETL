import * as runner from "apache-beam/runners/runner";

/**
 *
 * @param options
 * @param {function(root)} pipeline A pipeline is simply a callable that takes a root object.
 * @returns {Promise<void>}
 */
export async function runPipeline(options, pipeline) {
    // Here we create a runner based on the provide options, and use it to run the above pipeline.
    await runner.createRunner(options).run(pipeline);
}
