import React from 'react'
import Stats from './Stats'

type championProps = {
    c: {
        name: string
        AD: number[]
    }
}

function UnitDisplay(props: championProps) {
    const curr = props.c;
    return (
        <div>
            <p>name is {curr.name}</p>
            <Stats />
        </div>
    )
}

export default UnitDisplay