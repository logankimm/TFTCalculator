import React, { useEffect } from 'react'
import Stars from './Stars'
import UnitSelector from './UnitSelector'

type championProps = {
    Name: String,
    AD: number[],
    HP: number[],
    Armor: number[],
    MR: number[],
}

const championNames = (champions: Array<championProps>) => {
    const nameArray = []
    for (let champion of champions) {
        nameArray.push(champion.Name)
    }
    return nameArray
}

function UnitContainer(props: any) {
    const nameArray = []
    for (let champion of props.units) {
        nameArray.push(champion.Name)
    }

    return (
        <div>
            <table>
                <UnitSelector names = { nameArray }/>
                <li>Does this work</li>
                <Stars />
                <tr>
                    <td></td>
                </tr>
            </table>
        </div>
    )
}

export default UnitContainer