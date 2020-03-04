const db = require('../data/config')

function find() {
    return db("schemes")
}

function findById(id) {
    return db("schemes")
        .where({id: id})
        .first()
}

function findSteps(id){
    return db("schemes as s")
        .where({scheme_id: id})
        .join("steps as st", "s.id", "st.scheme_id")
        .select("s.id", "s.scheme_name", "st.step_number", "st.instructions")
        .orderBy("st.step_number", "desc")
}

function add(schemeData){
    return db("schemes").insert(schemeData)
}

function addStep(stepData, id) {
    db("steps").insert(stepData)
    return db("steps").where()
}

function update(changes, id){
    return db("schemes").where({id: id}).update(changes)
}

function remove(id){
    return db("schemes").where({id: id}).del()
}

module.exports = {
    find, 
    findById,
    add,
    update,
    remove,
    findSteps, 
    addStep
}