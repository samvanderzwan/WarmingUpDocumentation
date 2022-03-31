<?xml version='1.0' encoding='UTF-8'?>
<esdl:EnergySystem xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:esdl="http://www.tno.nl/esdl" description="basic" version="22" esdlVersion="v2111" name="course_model with return network" id="3b21ab49-fd94-4dda-878d-dcaf651ded78_with_return_network">
  <energySystemInformation xsi:type="esdl:EnergySystemInformation" id="9a76b800-6e2c-4e99-a9a5-859f7badd061">
    <quantityAndUnits xsi:type="esdl:QuantityAndUnits" id="54fda8fc-e725-4c44-8a49-726a811ba069">
      <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="eb07bccb-203f-407e-af98-e687656a221d" description="Energy in GJ" multiplier="GIGA" physicalQuantity="ENERGY" unit="JOULE"/>
      <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="e9405fc8-5e57-4df5-8584-4babee7cdf1b" description="Power in MW" unit="WATT" physicalQuantity="POWER" multiplier="MEGA"/>
    </quantityAndUnits>
    <carriers xsi:type="esdl:Carriers" id="e84423d9-b617-4fa0-b113-1ba12daacaaf">
      <carrier xsi:type="esdl:HeatCommodity" returnTemperature="40.0" supplyTemperature="80.0" id="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" name="supply_ret"/>
      <carrier xsi:type="esdl:HeatCommodity" returnTemperature="40.0" supplyTemperature="80.0" id="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" name="Return_ret"/>
    </carriers>
  </energySystemInformation>
  <instance xsi:type="esdl:Instance" name="Untitled instance" id="8db3337e-440e-48d1-b1e9-6f86c4f76320">
    <area xsi:type="esdl:Area" name="Untitled area" id="a3f3b5d9-2faa-4862-a5b0-d02b219052dd">
      <asset xsi:type="esdl:HeatingDemand" maxTemperature="120.0" minTemperature="40.0" power="5000000.0" name="HeatingDemand_cc61" id="cc61c52a-29a6-45d3-81e8-ce18ba12f319">
        <port xsi:type="esdl:InPort" name="In" id="c3eb59bc-037d-4684-918e-df0f54af5b3d" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" connectedTo="9e1c58ab-ec19-4964-928f-d2a582af6ce8"/>
        <port xsi:type="esdl:OutPort" connectedTo="99628a79-e31c-4a99-bf4a-2f788a5d5343" name="Out" id="fcf96c55-8264-41a5-90ee-0977a394a46a" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2019-01-01T01:00:00.000000+0000" host="wu-profiles.esdl-beta.hesi.energy" port="443" database="energy_profiles" measurement="Unittests profiledata" field="demand5_MW" id="72fb7f27-a9e0-4f64-8010-1cf34ab0aca1" filters="" endDate="2020-01-01T00:00:00.000000+0000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="e9405fc8-5e57-4df5-8584-4babee7cdf1b"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Point" lat="52.01906782352804" lon="4.431524276733399"/>
      </asset>
      <asset xsi:type="esdl:HeatingDemand" maxTemperature="120.0" minTemperature="40.0" power="5000000.0" name="HeatingDemand_8805" id="8805731a-8780-47b4-8204-76ba074564bc">
        <port xsi:type="esdl:InPort" name="In" id="69464799-3ec3-4928-a5da-6158a6237c76" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" connectedTo="88b6c35c-7eeb-42e9-ba4e-491fa6c7a6fc"/>
        <port xsi:type="esdl:OutPort" connectedTo="1467bee7-ed90-49d5-8395-3595408ad1ee" name="Out" id="c8625b7f-e9ad-4327-899e-0c6e91e873cb" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2019-01-01T01:00:00.000000+0000" host="wu-profiles.esdl-beta.hesi.energy" port="443" database="energy_profiles" measurement="Unittests profiledata" field="demand2_MW" id="a8c3c095-1b56-4c26-8fbd-231b5c95b1cb" filters="" endDate="2020-01-01T00:00:00.000000+0000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="e9405fc8-5e57-4df5-8584-4babee7cdf1b"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Point" lat="52.0094006941874" lon="4.396162033081056"/>
      </asset>
      <asset xsi:type="esdl:HeatingDemand" maxTemperature="120.0" minTemperature="40.0" power="5000000.0" name="HeatingDemand_156c" id="156c4afb-4106-4286-8f41-fbf8edc6e5ce">
        <port xsi:type="esdl:InPort" name="In" id="ad377fa7-710f-45e7-9144-1521bef5c1ab" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" connectedTo="22be2ae1-10c0-42eb-abd9-6b115b800283"/>
        <port xsi:type="esdl:OutPort" connectedTo="fdbab763-3e05-49d6-9271-207035c14bcb" name="Out" id="f46090b9-dcd6-433f-b021-061c839e634c" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret">
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2019-01-01T01:00:00.000000+0000" host="wu-profiles.esdl-beta.hesi.energy" port="443" database="energy_profiles" measurement="Unittests profiledata" field="demand3_MW" id="4d51b8b1-96d5-402a-9c90-3fdfc5c7c1bf" filters="" endDate="2020-01-01T00:00:00.000000+0000">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="e9405fc8-5e57-4df5-8584-4babee7cdf1b"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lat="52.04283057060157" lon="4.391098022460938"/>
      </asset>
      <asset xsi:type="esdl:Joint" name="Joint_1126" id="11262f35-3d51-4ce3-9a69-6eb4a6c46c9d">
        <port xsi:type="esdl:InPort" name="In" id="a8779f8a-3d61-4a97-bfb4-35029175ec97" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" connectedTo="7c178a7c-f6cb-4f33-8c4a-076d9131ed8a"/>
        <port xsi:type="esdl:OutPort" connectedTo="a89b5045-f815-4126-a4c8-dc125a99c0f8 b9af6540-8cae-41ce-b0c3-4528e027d3b3" name="Out" id="fd562e07-a60c-4f5c-9084-d51e736ff545" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret"/>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lat="52.01909093233181" lon="4.401419162750245"/>
      </asset>
      <asset xsi:type="esdl:Pipe" diameter="DN80" related="Pipe1_ret" name="Pipe1" length="1533.2" innerDiameter="0.0825" id="Pipe1">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.01909093233181" lon="4.401419162750245"/>
          <point xsi:type="esdl:Point" lat="52.01563438289948" lon="4.391613006591798"/>
          <point xsi:type="esdl:Point" lat="52.0094006941874" lon="4.396162033081056"/>
        </geometry>
        <port xsi:type="esdl:InPort" name="In" id="a89b5045-f815-4126-a4c8-dc125a99c0f8" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" connectedTo="fd562e07-a60c-4f5c-9084-d51e736ff545"/>
        <port xsi:type="esdl:OutPort" connectedTo="69464799-3ec3-4928-a5da-6158a6237c76" name="Out" id="88b6c35c-7eeb-42e9-ba4e-491fa6c7a6fc" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret"/>
      </asset>
      <asset xsi:type="esdl:Pipe" diameter="DN200" related="Pipe2_ret" name="Pipe2" length="44.4" innerDiameter="0.2101" id="Pipe2">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.019437562955694" lon="4.401097297668458"/>
          <point xsi:type="esdl:Point" lat="52.01909093233181" lon="4.401419162750245"/>
        </geometry>
        <port xsi:type="esdl:InPort" name="In" id="30f746ff-aca7-4e55-946e-3dcaf2ac7569" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" connectedTo="26804ae1-dbfb-4594-bb3c-fef069059074"/>
        <port xsi:type="esdl:OutPort" connectedTo="a8779f8a-3d61-4a97-bfb4-35029175ec97" name="Out" id="7c178a7c-f6cb-4f33-8c4a-076d9131ed8a" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret"/>
      </asset>
      <asset xsi:type="esdl:Joint" name="Joint_91b0" id="91b0e057-84cd-4db3-8d2d-cae02077cbaf">
        <port xsi:type="esdl:InPort" name="In" id="6829cf4d-0dd9-43ac-8581-87b9998ca5bc" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" connectedTo="607e9ed3-3e2e-4c08-bffe-0d713420cce7"/>
        <port xsi:type="esdl:OutPort" connectedTo="e3b7d0a5-e7d7-4cb2-8a33-e56d2077616b 758212e1-ab7f-44b1-a203-6ed42eb3c6bc e2b3d903-e4c2-479a-b520-53736c8a1d78" name="Out" id="416291d2-c5f7-4a87-919a-655924b90eb2" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret"/>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lat="52.02578372981452" lon="4.422471821308137"/>
      </asset>
      <asset xsi:type="esdl:Pipe" diameter="DN100" related="Pipe3_ret" name="Pipe3" length="1157.3" innerDiameter="0.1071" id="Pipe3">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.02578372981452" lon="4.422471821308137"/>
          <point xsi:type="esdl:Point" lat="52.02318760445455" lon="4.425044059753419"/>
          <point xsi:type="esdl:Point" lat="52.02034869350056" lon="4.4269752502441415"/>
          <point xsi:type="esdl:Point" lat="52.018381156483095" lon="4.428133964538575"/>
          <point xsi:type="esdl:Point" lat="52.01906782352804" lon="4.431524276733399"/>
        </geometry>
        <port xsi:type="esdl:InPort" name="In" id="e3b7d0a5-e7d7-4cb2-8a33-e56d2077616b" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" connectedTo="416291d2-c5f7-4a87-919a-655924b90eb2"/>
        <port xsi:type="esdl:OutPort" connectedTo="c3eb59bc-037d-4684-918e-df0f54af5b3d" name="Out" id="9e1c58ab-ec19-4964-928f-d2a582af6ce8" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret"/>
      </asset>
      <asset xsi:type="esdl:Pipe" diameter="DN100" related="Pipe4_ret" name="Pipe4" length="2982.2" innerDiameter="0.1071" id="Pipe4">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.02578372981452" lon="4.422471821308137"/>
          <point xsi:type="esdl:Point" lat="52.030501921460775" lon="4.419465065002442"/>
          <point xsi:type="esdl:Point" lat="52.033379790423076" lon="4.416353702545167"/>
          <point xsi:type="esdl:Point" lat="52.035940674013524" lon="4.408607482910157"/>
          <point xsi:type="esdl:Point" lat="52.03683826859462" lon="4.405066967010499"/>
          <point xsi:type="esdl:Point" lat="52.03810543026395" lon="4.400925636291505"/>
          <point xsi:type="esdl:Point" lat="52.04211787192499" lon="4.393007755279542"/>
          <point xsi:type="esdl:Point" lat="52.04283057060157" lon="4.391098022460938"/>
        </geometry>
        <port xsi:type="esdl:InPort" name="In" id="758212e1-ab7f-44b1-a203-6ed42eb3c6bc" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" connectedTo="416291d2-c5f7-4a87-919a-655924b90eb2"/>
        <port xsi:type="esdl:OutPort" connectedTo="ad377fa7-710f-45e7-9144-1521bef5c1ab" name="Out" id="22be2ae1-10c0-42eb-abd9-6b115b800283" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret"/>
      </asset>
      <asset xsi:type="esdl:Pipe" diameter="DN150" related="Pipe5_ret" name="Pipe5" length="1624.7" innerDiameter="0.1603" id="Pipe5">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.01909093233181" lon="4.401419162750245"/>
          <point xsi:type="esdl:Point" lat="52.02149748382286" lon="4.408371448516847"/>
          <point xsi:type="esdl:Point" lat="52.0233064386584" lon="4.414680004119874"/>
          <point xsi:type="esdl:Point" lat="52.025085613014795" lon="4.419805705547334"/>
          <point xsi:type="esdl:Point" lat="52.02567150373549" lon="4.421594738960267"/>
          <point xsi:type="esdl:Point" lat="52.02578372981452" lon="4.422471821308137"/>
        </geometry>
        <port xsi:type="esdl:InPort" name="In" id="b9af6540-8cae-41ce-b0c3-4528e027d3b3" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" connectedTo="fd562e07-a60c-4f5c-9084-d51e736ff545"/>
        <port xsi:type="esdl:OutPort" connectedTo="6829cf4d-0dd9-43ac-8581-87b9998ca5bc" name="Out" id="607e9ed3-3e2e-4c08-bffe-0d713420cce7" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret"/>
      </asset>
      <asset xsi:type="esdl:Joint" name="Joint_1126_ret" id="c6fec31e-2c4a-423d-937c-7fc28ea81a21">
        <port xsi:type="esdl:InPort" name="ret_port" id="c06f582d-1922-47e3-ae04-a740b28353e3" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" connectedTo="b4a30d86-df7a-4136-9170-55087818800d 35ff6c51-ecdc-419c-9e67-8dbbf4ccaa42"/>
        <port xsi:type="esdl:OutPort" connectedTo="fb153d7c-2dc3-4f53-bbee-f0060efef1c7" name="ret_port" id="39c08ebb-b7d8-4a85-a226-800c225a8a61" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret"/>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lat="52.019180932421804" lon="4.400719145015912"/>
      </asset>
      <asset xsi:type="esdl:Joint" name="Joint_91b0_ret" id="b7a46b09-779f-4a57-b73e-ab707ec65842">
        <port xsi:type="esdl:InPort" name="ret_port" id="9a5c2e7e-e970-4561-8538-9a4000dee416" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" connectedTo="002a5802-e55b-4025-abe9-8d508cfdd78c 0c142bfb-4b38-44aa-b88f-71da247525ef 6da270d8-8ba6-4502-b682-2a58e3969504"/>
        <port xsi:type="esdl:OutPort" connectedTo="bbb482fa-f98e-4219-ab7e-d8684b0b4e66" name="ret_port" id="3383078a-72da-4af1-badf-686f43c73018" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret"/>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lat="52.02587372990452" lon="4.421796245126029"/>
      </asset>
      <asset xsi:type="esdl:Pipe" diameter="DN80" related="Pipe1" name="Pipe1_ret" length="1533.2" innerDiameter="0.0825" id="Pipe1_ret">
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" CRS="WGS84" lat="52.009490694277396" lon="4.3954232586139"/>
          <point xsi:type="esdl:Point" CRS="WGS84" lat="52.015724382989475" lon="4.3908996472617385"/>
          <point xsi:type="esdl:Point" CRS="WGS84" lat="52.019180932421804" lon="4.400719145015912"/>
        </geometry>
        <port xsi:type="esdl:InPort" name="In_ret" id="1467bee7-ed90-49d5-8395-3595408ad1ee" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" connectedTo="c8625b7f-e9ad-4327-899e-0c6e91e873cb"/>
        <port xsi:type="esdl:OutPort" connectedTo="c06f582d-1922-47e3-ae04-a740b28353e3" name="Out_ret" id="b4a30d86-df7a-4136-9170-55087818800d" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret"/>
      </asset>
      <asset xsi:type="esdl:Pipe" diameter="DN200" related="Pipe2" name="Pipe2_ret" length="44.4" innerDiameter="0.2101" id="Pipe2_ret">
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" CRS="WGS84" lat="52.019180932421804" lon="4.400719145015912"/>
          <point xsi:type="esdl:Point" CRS="WGS84" lat="52.01952756304569" lon="4.400398589922203"/>
        </geometry>
        <port xsi:type="esdl:InPort" name="In_ret" id="fb153d7c-2dc3-4f53-bbee-f0060efef1c7" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" connectedTo="39c08ebb-b7d8-4a85-a226-800c225a8a61"/>
        <port xsi:type="esdl:OutPort" connectedTo="57edd602-77e2-4d17-9b71-38b485b75207" name="Out_ret" id="095f2c36-395f-4183-a760-80d5362e1de3" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret"/>
      </asset>
      <asset xsi:type="esdl:Pipe" diameter="DN100" related="Pipe3" name="Pipe3_ret" length="1157.3" innerDiameter="0.1071" id="Pipe3_ret">
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" CRS="WGS84" lat="52.01915782361804" lon="4.4308241714884975"/>
          <point xsi:type="esdl:Point" CRS="WGS84" lat="52.01847115657309" lon="4.427431248765651"/>
          <point xsi:type="esdl:Point" CRS="WGS84" lat="52.020438693590556" lon="4.426279962182911"/>
          <point xsi:type="esdl:Point" CRS="WGS84" lat="52.023277604544546" lon="4.42435921177036"/>
          <point xsi:type="esdl:Point" CRS="WGS84" lat="52.02587372990452" lon="4.421796245126029"/>
        </geometry>
        <port xsi:type="esdl:InPort" name="In_ret" id="99628a79-e31c-4a99-bf4a-2f788a5d5343" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" connectedTo="fcf96c55-8264-41a5-90ee-0977a394a46a"/>
        <port xsi:type="esdl:OutPort" connectedTo="9a5c2e7e-e970-4561-8538-9a4000dee416" name="Out_ret" id="002a5802-e55b-4025-abe9-8d508cfdd78c" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret"/>
      </asset>
      <asset xsi:type="esdl:Pipe" diameter="DN100" related="Pipe4" name="Pipe4_ret" length="2982.2" innerDiameter="0.1071" id="Pipe4_ret">
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" CRS="WGS84" lat="52.04292057069157" lon="4.390477502296783"/>
          <point xsi:type="esdl:Point" CRS="WGS84" lat="52.042207872014984" lon="4.392385117209615"/>
          <point xsi:type="esdl:Point" CRS="WGS84" lat="52.038195430353944" lon="4.400290793359585"/>
          <point xsi:type="esdl:Point" CRS="WGS84" lat="52.03692826868462" lon="4.404428167491401"/>
          <point xsi:type="esdl:Point" CRS="WGS84" lat="52.03603067410352" lon="4.407965850141681"/>
          <point xsi:type="esdl:Point" CRS="WGS84" lat="52.033469790513074" lon="4.41570384355307"/>
          <point xsi:type="esdl:Point" CRS="WGS84" lat="52.03059192155077" lon="4.418805700922162"/>
          <point xsi:type="esdl:Point" CRS="WGS84" lat="52.02587372990452" lon="4.421796245126029"/>
        </geometry>
        <port xsi:type="esdl:InPort" name="In_ret" id="fdbab763-3e05-49d6-9271-207035c14bcb" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" connectedTo="f46090b9-dcd6-433f-b021-061c839e634c"/>
        <port xsi:type="esdl:OutPort" connectedTo="9a5c2e7e-e970-4561-8538-9a4000dee416" name="Out_ret" id="0c142bfb-4b38-44aa-b88f-71da247525ef" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret"/>
      </asset>
      <asset xsi:type="esdl:Pipe" diameter="DN150" related="Pipe5" name="Pipe5_ret" length="1624.7" innerDiameter="0.1603" id="Pipe5_ret">
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" CRS="WGS84" lat="52.02587372990452" lon="4.421796245126029"/>
          <point xsi:type="esdl:Point" CRS="WGS84" lat="52.025761503825485" lon="4.420918767262569"/>
          <point xsi:type="esdl:Point" CRS="WGS84" lat="52.02517561310479" lon="4.419127661327588"/>
          <point xsi:type="esdl:Point" CRS="WGS84" lat="52.0233964387484" lon="4.413995586196941"/>
          <point xsi:type="esdl:Point" CRS="WGS84" lat="52.02158748391286" lon="4.4076804239030505"/>
          <point xsi:type="esdl:Point" CRS="WGS84" lat="52.019180932421804" lon="4.400719145015912"/>
        </geometry>
        <port xsi:type="esdl:InPort" name="In_ret" id="bbb482fa-f98e-4219-ab7e-d8684b0b4e66" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" connectedTo="3383078a-72da-4af1-badf-686f43c73018"/>
        <port xsi:type="esdl:OutPort" connectedTo="c06f582d-1922-47e3-ae04-a740b28353e3" name="Out_ret" id="35ff6c51-ecdc-419c-9e67-8dbbf4ccaa42" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret"/>
      </asset>
      <asset xsi:type="esdl:HeatStorage" capacity="1000000.0" volume="20000.0" name="HeatStorage_89a4" id="89a45979-d0cd-4d13-9cdc-9792b77dbcb7">
        <port xsi:type="esdl:InPort" name="In" id="b43310af-03f2-4502-b39c-43ddee7f7b0e" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" connectedTo="aadb8564-e586-4a5c-8b1d-fd8eae2d6564"/>
        <port xsi:type="esdl:OutPort" connectedTo="0cc26990-d6d0-4a10-9361-a262bad04a95" name="Out" id="3e167069-47be-438d-a2e5-53505b41f085" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret"/>
        <costInformation xsi:type="esdl:CostInformation" id="08967f39-b894-4c15-96f2-8fb9ee64086c">
          <investmentCosts xsi:type="esdl:SingleValue" value="250.0" id="0ec072fa-c9f8-4c7c-ba34-7c5b312d9764">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="4cff4be9-52a5-4a40-903a-a42a11fb57cf" description="Cost in EUR/m3" perUnit="CUBIC_METRE" physicalQuantity="COST" unit="EURO"/>
          </investmentCosts>
          <variableOperationalCosts xsi:type="esdl:SingleValue" value="20.0" id="2d331457-a711-47d8-a7eb-7b7c11182f40">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="7d99fe74-c84d-459e-bd2b-ad092285aa57" description="Cost in EUR/kWh" perUnit="WATTHOUR" perMultiplier="KILO" physicalQuantity="COST" unit="EURO"/>
          </variableOperationalCosts>
          <fixedMaintenanceCosts xsi:type="esdl:SingleValue" value="1.0" id="5cfea4ac-e8dd-456e-896d-211f340aa761">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="c9b8a094-fa2e-4ab2-baac-1524cb63973c" physicalQuantity="COST" description="Cost in %" unit="PERCENT"/>
          </fixedMaintenanceCosts>
        </costInformation>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lat="52.026805304260904" lon="4.4262027740478525"/>
      </asset>
      <asset xsi:type="esdl:Pipe" innerDiameter="0.1603" name="Pipe_6" length="279.4" id="126c80c0-108a-457d-9caa-efccad28957b" outerDiameter="0.25">
        <dataSource xsi:type="esdl:DataSource" attribution="https://www.logstor.com/media/6506/product-catalogue-uk-202003.pdf" name="Logstor Product Catalogue Version 2020.03"/>
        <material xsi:type="esdl:CompoundMatter" compoundType="LAYERED">
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.004">
            <matter xsi:type="esdl:Material" id="2e9780e6-8469-4cd7-8170-4ff99e436aaa" thermalConductivity="52.15" name="steel"/>
          </component>
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.03725">
            <matter xsi:type="esdl:Material" id="1ad228bd-a517-4b7f-93ef-5281f4705388" thermalConductivity="0.027" name="PUR"/>
          </component>
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.0036">
            <matter xsi:type="esdl:Material" id="0dbb072b-ba14-42c8-9a8f-32a4d488f0b3" thermalConductivity="0.4" name="HDPE"/>
          </component>
        </material>
        <port xsi:type="esdl:InPort" name="In" id="e2b3d903-e4c2-479a-b520-53736c8a1d78" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret" connectedTo="416291d2-c5f7-4a87-919a-655924b90eb2"/>
        <port xsi:type="esdl:OutPort" connectedTo="b43310af-03f2-4502-b39c-43ddee7f7b0e" name="Out" id="aadb8564-e586-4a5c-8b1d-fd8eae2d6564" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret"/>
        <costInformation xsi:type="esdl:CostInformation" id="c9d573b7-72d9-4331-a865-05acb30e5eb6">
          <investmentCosts xsi:type="esdl:SingleValue" id="db9e6fbc-aff9-4238-ac3f-89e3c6847858" name="Combined investment and installation costs" value="1126.4">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="94040534-a337-458d-84bb-39b2350788d6" description="Costs in EUR/m" perUnit="METRE" physicalQuantity="COST" unit="EURO"/>
          </investmentCosts>
        </costInformation>
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lon="4.422471821308137" lat="52.02578372981452"/>
          <point xsi:type="esdl:Point" lon="4.4262027740478525" lat="52.026805304260904"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:Pipe" innerDiameter="0.1603" name="Pipe_6_ret" length="318.8" id="8bc2f73d-32ab-4bb2-974a-ef02433a9ac3" outerDiameter="0.25">
        <dataSource xsi:type="esdl:DataSource" attribution="https://www.logstor.com/media/6506/product-catalogue-uk-202003.pdf" name="Logstor Product Catalogue Version 2020.03"/>
        <material xsi:type="esdl:CompoundMatter" compoundType="LAYERED">
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.004">
            <matter xsi:type="esdl:Material" id="2e9780e6-8469-4cd7-8170-4ff99e436aaa" thermalConductivity="52.15" name="steel"/>
          </component>
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.03725">
            <matter xsi:type="esdl:Material" id="1ad228bd-a517-4b7f-93ef-5281f4705388" thermalConductivity="0.027" name="PUR"/>
          </component>
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.0036">
            <matter xsi:type="esdl:Material" id="0dbb072b-ba14-42c8-9a8f-32a4d488f0b3" thermalConductivity="0.4" name="HDPE"/>
          </component>
        </material>
        <port xsi:type="esdl:InPort" name="In" id="0cc26990-d6d0-4a10-9361-a262bad04a95" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" connectedTo="3e167069-47be-438d-a2e5-53505b41f085"/>
        <port xsi:type="esdl:OutPort" connectedTo="9a5c2e7e-e970-4561-8538-9a4000dee416" name="Out" id="6da270d8-8ba6-4502-b682-2a58e3969504" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret"/>
        <costInformation xsi:type="esdl:CostInformation" id="8819c3ba-068c-46bf-8400-338642d150e8">
          <investmentCosts xsi:type="esdl:SingleValue" id="db9e6fbc-aff9-4238-ac3f-89e3c6847858" name="Combined investment and installation costs" value="1126.4">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="94040534-a337-458d-84bb-39b2350788d6" description="Costs in EUR/m" perUnit="METRE" physicalQuantity="COST" unit="EURO"/>
          </investmentCosts>
        </costInformation>
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lon="4.4262027740478525" lat="52.026805304260904"/>
          <point xsi:type="esdl:Point" lon="4.421796245126029" lat="52.02587372990452"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:ResidualHeatSource" power="1500000.0" minTemperature="70.0" maxTemperature="80.0" name="ResidualHeatSource_a3bc" id="a3bc211c-548b-4544-87ec-57d2118cc012">
        <port xsi:type="esdl:OutPort" connectedTo="30f746ff-aca7-4e55-946e-3dcaf2ac7569" name="Out" id="26804ae1-dbfb-4594-bb3c-fef069059074" carrier="e96c4852-b2bc-43be-8fa7-5ae5e25a1883_ret"/>
        <port xsi:type="esdl:InPort" name="In" id="57edd602-77e2-4d17-9b71-38b485b75207" carrier="bac202fe-7c5f-4623-8ade-badbc607a16e_ret" connectedTo="095f2c36-395f-4183-a760-80d5362e1de3"/>
        <geometry xsi:type="esdl:Point" lon="4.400689601898194" CRS="WGS84" lat="52.02004498538097"/>
      </asset>
    </area>
  </instance>
</esdl:EnergySystem>
