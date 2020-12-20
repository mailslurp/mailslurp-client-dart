part of mailslurp.api;

class DNSLookupOptions {
  /* List of record types you wish to query such as MX, DNS, TXT, NS, A etc. */
  String hostname = null;
  /* Optionally control whether to omit the final dot in full DNS name values. */
  bool omitFinalDNSDot = null;
  /* List of record types you wish to query such as MX, DNS, TXT, NS, A etc. */
  List<String> recordTypes = [];
  //enum recordTypesEnum {  A,  NS,  MD,  MF,  CNAME,  SOA,  MB,  MG,  MR,  NULL,  WKS,  PTR,  HINFO,  MINFO,  MX,  TXT,  RP,  AFSDB,  X25,  ISDN,  RT,  NSAP,  NSAP_PTR,  SIG,  KEY,  PX,  GPOS,  AAAA,  LOC,  NXT,  EID,  NIMLOC,  SRV,  ATMA,  NAPTR,  KX,  CERT,  A6,  DNAME,  SINK,  OPT,  APL,  DS,  SSHFP,  IPSECKEY,  RRSIG,  NSEC,  DNSKEY,  DHCID,  NSEC3,  NSEC3PARAM,  TLSA,  SMIMEA,  HIP,  NINFO,  RKEY,  TALINK,  CDS,  CDNSKEY,  OPENPGPKEY,  CSYNC,  ZONEMD,  SVCB,  HTTPS,  SPF,  UINFO,  UID,  GID,  UNSPEC,  NID,  L32,  L64,  LP,  EUI48,  EUI64,  TKEY,  TSIG,  IXFR,  AXFR,  MAILB,  MAILA,  ANY,  URI,  CAA,  AVC,  DOA,  AMTRELAY,  TA,  DLV,  };{
  DNSLookupOptions();

  @override
  String toString() {
    return 'DNSLookupOptions[hostname=$hostname, omitFinalDNSDot=$omitFinalDNSDot, recordTypes=$recordTypes, ]';
  }

  DNSLookupOptions.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    hostname = json['hostname'];
    omitFinalDNSDot = json['omitFinalDNSDot'];
    recordTypes = (json['recordTypes'] == null) ?
      null :
      (json['recordTypes'] as List).cast<String>();
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (hostname != null)
      json['hostname'] = hostname;
    if (omitFinalDNSDot != null)
      json['omitFinalDNSDot'] = omitFinalDNSDot;
    if (recordTypes != null)
      json['recordTypes'] = recordTypes;
    return json;
  }

  static List<DNSLookupOptions> listFromJson(List<dynamic> json) {
    return json == null ? List<DNSLookupOptions>() : json.map((value) => DNSLookupOptions.fromJson(value)).toList();
  }

  static Map<String, DNSLookupOptions> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DNSLookupOptions>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = DNSLookupOptions.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of DNSLookupOptions-objects as value to a dart map
  static Map<String, List<DNSLookupOptions>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<DNSLookupOptions>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = DNSLookupOptions.listFromJson(value);
       });
     }
     return map;
  }
}

