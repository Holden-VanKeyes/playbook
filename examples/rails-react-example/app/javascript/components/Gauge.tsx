import React from 'react'
import { Gauge } from 'playbook-ui'

const data = [{ name: 'Name', value: 45 }]

const GaugeDefault = (props) => (
  <div>
    <Gauge chartData={data} id="gauge-default" />
  </div>
)

export default GaugeDefault
