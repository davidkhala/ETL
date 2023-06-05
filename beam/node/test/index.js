import {runPipeline} from "../app.js";
import {createPipeline, printReducer} from "../pipeline.js";
describe('', function (){
    this.timeout(0)
    it('', async ()=>{
        await runPipeline({}, createPipeline(['a','b', 'c'], printReducer));
    })
})