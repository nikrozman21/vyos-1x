<!-- included start from dhcpv6-options.xml.i -->
<node name="dhcpv6-options">
  <properties>
    <help>DHCPv6 client settings/options</help>
  </properties>
  <children>
    <leafNode name="parameters-only">
      <properties>
        <help>Acquire only config parameters, no address</help>
        <valueless/>
      </properties>
    </leafNode>
    <tagNode name="pd">
      <properties>
        <help>DHCPv6 prefix delegation interface statement</help>
        <valueHelp>
          <format>instance number</format>
          <description>Prefix delegation instance (>= 0)</description>
        </valueHelp>
        <constraint>
          <validator name="numeric" argument="--non-negative"/>
        </constraint>
      </properties>
      <children>
        <leafNode name="length">
          <properties>
            <help>Request IPv6 prefix length from peer</help>
            <valueHelp>
              <format>32-64</format>
              <description>Length of delegated prefix</description>
            </valueHelp>
            <constraint>
              <validator name="numeric" argument="--range 32-64"/>
            </constraint>
          </properties>
          <defaultValue>64</defaultValue>
        </leafNode>
        <tagNode name="interface">
          <properties>
            <help>Delegate IPv6 prefix from provider to this interface</help>
            <completionHelp>
              <script>${vyos_completion_dir}/list_interfaces.py --broadcast</script>
            </completionHelp>
          </properties>
          <children>
            <leafNode name="address">
              <properties>
                <help>Local interface address assigned to interface</help>
                <valueHelp>
                  <format>&gt;0</format>
                  <description>Used to form IPv6 interface address (default: EUI-64)</description>
                </valueHelp>
                <constraint>
                  <validator name="numeric" argument="--non-negative"/>
                </constraint>
              </properties>
            </leafNode>
            <leafNode name="sla-id">
              <properties>
                <help>Interface site-Level aggregator (SLA)</help>
                <valueHelp>
                  <format>0-128</format>
                  <description>Decimal integer which fits in the length of SLA IDs</description>
                </valueHelp>
                <constraint>
                  <validator name="numeric" argument="--range 0-128"/>
                </constraint>
              </properties>
            </leafNode>
          </children>
        </tagNode>
      </children>
    </tagNode>
    <leafNode name="rapid-commit">
      <properties>
        <help>Wait for immediate reply instead of advertisements</help>
        <valueless/>
      </properties>
    </leafNode>
    <leafNode name="temporary">
      <properties>
        <help>IPv6 temporary address</help>
        <valueless/>
      </properties>
    </leafNode>
  </children>
</node>
<!-- included end -->
