<template> 
  <b-container fluid  style="color: black;"> 
    <b-col offset-md="1" md="10" class="text-center bg-light mb-5 py-3" style="border-radius: 5px;">
      <h2> お勉強室　(準備中）</h2>
    </b-col>
    <b-row no-gutters>
      <b-col offset-md="1" md="5" class="bg-light p-4">

        <h3 style="border-bottom: 1px solid black;">Aircraft Operations</h3>
        <ul>
          <li><b-link to="#">Departure</b-link></li>
          <li><b-link to="#">En-route</b-link></li>
          <li><b-link to="#">Approach</b-link></li>
          <li><b-link to="#">Ground</b-link></li>
          <li><b-link to="#">Night</b-link></li>
        </ul>
        
        <h3 style="border-bottom: 1px solid black;">Human Factors</h3>
        <ul>
          <li><b-link to="#">Carbon Monoxide Poisoning</b-link></li>
          <li><b-link to="#">Aeronautical Decision-Making</b-link></li>
          <li><b-link to="#">Crew Resource Management</b-link></li>
          <li><b-link to="#">Hyperventilation</b-link></li>
          <li><b-link to="#">Hypoxia</b-link></li>
          <li><b-link to="#">Illusion in Flight</b-link></li>
        </ul>

         <h3 style="border-bottom: 1px solid black;">Human Factors</h3>
          <ul>
            <li><b-link to="#">Performance Calculations</b-link></li>
            <li><b-link to="#">Aircraft Stability</b-link></li>
            <li><b-link to="#">Stalls</b-link></li>
            <li><b-link to="#">Weight and Balance</b-link></li>
            <li><b-link to="#">Principles of Flight</b-link></li>
            <li><b-link to="#">Turn Performance</b-link></li>
            <li><b-link to="#">Takeoff Performance</b-link></li>
            <li><b-link to="#">Landing Performance</b-link></li>
            <li><b-link to="#">Wake Turbulence</b-link></li>
        </ul>
      </b-col>

      <b-col md="5" class="bg-light p-4"> 
        <h3 style="border-bottom: 1px solid black;">Instruments</h3>
        <ul>
          <li><b-link to="#">Airspeed Indicator</b-link></li>
          <li><b-link to="#">Altimeter</b-link></li>
          <li><b-link to="#">Attitude Indicator</b-link></li>
          <li><b-link to="#">Heading Indicator</b-link></li>
          <li><b-link to="#">Magnetic Compass</b-link></li>
          <li><b-link to="#">DME</b-link></li>
          <li><b-link to="#">GPS</b-link></li>
        </ul>

        <h3 style="border-bottom: 1px solid black;">Aircraft Systems</h3>
        <ul>
          <li><b-link to="#">Cabin Heat</b-link></li>
          <li><b-link to="#">Electrical</b-link></li>
          <li><b-link to="#">Flight Control</b-link></li>
          <li><b-link to="#">Fuel</b-link></li>
          <li><b-link to="#">Gyroscopic Systems</b-link></li>
          <li><b-link to="#">Icing Systems</b-link></li>
          <li><b-link to="#">Ignition</b-link></li>
          <li><b-link to="#">Landing Gear</b-link></li>
          <li><b-link to="#">Lubrication</b-link></li>
          <li><b-link to="#">Pitot-Static Systems</b-link></li>
          <li><b-link to="#">Propeller</b-link></li>
          <li><b-link to="#">Supplemental Oxygen</b-link></li>
        </ul>
      </b-col>
    </b-row>  
  </b-container>

</template> 

<script>
  export default({
    
  })
</script>

<style lang="scss" scoped>
li{
  font-size: 1.2rem;
  padding-bottom: 2px;
}
</style>