import UnitContainer from '@/components/UnitContainer'
import UnitDisplay from '@/components/UnitDisplay'
import Image from 'next/image'




const Ezreal = {
    Name: "Ezreal",
    AD: [8, 2, 3],
    HP: [800, 200, 300],
    Armor: [80, 20, 30],
    MR: [80, 20, 30]
}

const Sett = {
    Name: "Sett",
    AD: [1, 2, 3],
    HP: [100, 200, 300],
    Armor: [10, 20, 30],
    MR: [10, 20, 30]
}

const test = [Ezreal, Sett]

export default function Home() {
    return (
        <div>
            <UnitContainer units={test}/>
            {/* <UnitDisplay c={test}/> */}
            {/* Structure -  */}
        </div>
  )
}
