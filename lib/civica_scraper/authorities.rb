# frozen_string_literal: true

module CivicaScraper
  AUTHORITIES = {
    burwood: {
      url: "https://ecouncil.burwood.nsw.gov.au/eservice/daEnquiryInit.do?doc_typ=10&nodeNum=219",
      period: :last7days,
      # Looks like they're geoblocking non australian web requests. Sigh.
      australian_proxy: true
    },
    nambucca: {
      url:
        "https://eservices.nambucca.nsw.gov.au/eservice/daEnquiryInit.do?doc_typ=10&nodeNum=2811",
      period: :last10days,
      # Because of incomplete certificate chain
      disable_ssl_certificate_check: true
    },
    cairns: {
      url: "https://eservices.cairns.qld.gov.au/eservice/daEnquiryInit.do?nodeNum=227",
      period: :last30days
    },
    orange: {
      url: "https://ecouncil.orange.nsw.gov.au/eservice/daEnquiryInit.do?nodeNum=24",
      period: :last30days
    },
    woollahra: {
      url: "https://eservices.woollahra.nsw.gov.au/eservice/daEnquiryInit.do?nodeNum=5270",
      period: :advertised,
      notice_period: true
    },
    lane_cove: {
      url: "https://ecouncil.lanecove.nsw.gov.au/eservice/dialog/daEnquiryInit.do?doc_type=8&nodeNum=6636",
      period: :last30days,
      notice_period: true,
      australian_proxy: true
    }
  }.freeze
end
