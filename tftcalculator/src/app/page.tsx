import UnitDisplay from '@/components/UnitDisplay'
import Image from 'next/image'

const test = {
  name: "Kaisa",
  AD: [1, 2, 3]
}
const name = "Kai'sa"

export default function Home() {
  return (
    <div>
      <UnitDisplay c={test}/>
    </div>
  )
}
