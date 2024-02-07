import React from 'react'

function UnitSelector(props: any) {
    const championNames = props.names
    return (
        <div>
            <select name="UnitSelector" id="UnitSelector">
                {championNames.map((name:String) => (
                    <option value={ name }> { name } </option>
                ))}
            </select>
        </div>
    )
}

export default UnitSelector