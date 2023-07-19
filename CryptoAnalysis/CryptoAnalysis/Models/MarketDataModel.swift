//
//  MarketDataModel.swift
//  CryptoAnalysis
//
//  Created by Manish Parihar on 19.07.23.
//

import Foundation

/*
 Website : https://www.coingecko.com/en/api/documentation
 URL: https://api.coingecko.com/api/v3/global
 {
   "data": {
     "active_cryptocurrencies": 9976,
     "upcoming_icos": 0,
     "ongoing_icos": 49,
     "ended_icos": 3376,
     "markets": 775,
     "total_market_cap": {
       "btc": 41632354.98221932,
       "eth": 654188915.5533041,
       "ltc": 13441904967.692013,
       "bch": 5092544340.504874,
       "bnb": 5165189071.639276,
       "eos": 1651325993500.017,
       "xrp": 1567436690579.3052,
       "xlm": 8963117453661.375,
       "link": 183173037171.5757,
       "dot": 240661959576.11453,
       "yfi": 180093062.4735832,
       "usd": 1245943866717.7554,
       "aed": 4576401660208.977,
       "ars": 333322469841436.8,
       "aud": 1841206008480.8315,
       "bdt": 135279541467441.48,
       "bhd": 469718345864.8623,
       "bmd": 1245943866717.7554,
       "brl": 6003705116166.172,
       "cad": 1643333925175.7827,
       "chf": 1069251583203.0459,
       "clp": 1016814789628361.1,
       "cny": 8994967151382.154,
       "czk": 26587081545054.438,
       "dkk": 8277801861699.428,
       "eur": 1111020605390.889,
       "gbp": 964957359951.7028,
       "hkd": 9727065078307.508,
       "huf": 416324930294693.4,
       "idr": 18678405538837052,
       "ils": 4471417184055.49,
       "inr": 102268881690688.03,
       "jpy": 173851842984561.94,
       "krw": 1577237653377087.8,
       "kwd": 382104819101.1346,
       "lkr": 405671675399847.5,
       "mmk": 2617123272853551,
       "mxn": 20896659046623.516,
       "myr": 5659700014565.413,
       "ngn": 968607951808250,
       "nok": 12498125224239.16,
       "nzd": 1992842360835.848,
       "php": 68026661223214.07,
       "pkr": 353775845733215.56,
       "pln": 4939443538149.339,
       "rub": 113407067906011.81,
       "sar": 4673660038444.955,
       "sek": 12742517113695.832,
       "sgd": 1651623189721.058,
       "thb": 42524064171077.17,
       "try": 33558374208674.965,
       "twd": 38734772597340.55,
       "uah": 45801036086257.73,
       "vef": 124756359374.449,
       "vnd": 29454944331612330,
       "zar": 22336521616757.24,
       "xdr": 920123315851.7274,
       "xag": 49428487027.370636,
       "xau": 630235786.1018414,
       "bits": 41632354982219.32,
       "sats": 4163235498221932.5
     },
     "total_volume": {
       "btc": 1315902.220287102,
       "eth": 20677394.945144523,
       "ltc": 424867452.235853,
       "bch": 160963520.01809457,
       "bnb": 163259651.54927373,
       "eos": 52194586210.47337,
       "xrp": 49543039834.61141,
       "xlm": 283303362565.11084,
       "link": 5789675035.528321,
       "dot": 7606766590.074171,
       "yfi": 5692324.175956544,
       "usd": 39381397023.233955,
       "aed": 144649446522.21902,
       "ars": 10535550494879.68,
       "aud": 58196253265.05425,
       "bdt": 4275872672887.595,
       "bhd": 14846707914.965218,
       "bmd": 39381397023.233955,
       "brl": 189763199696.155,
       "cad": 51941975459.60334,
       "chf": 33796563585.781128,
       "clp": 32139158110661.266,
       "cny": 284310057669.5349,
       "czk": 840356007990.263,
       "dkk": 261642125542.9619,
       "eur": 35116785539.58793,
       "gbp": 30500064985.157284,
       "hkd": 307449975839.4319,
       "huf": 13159065836406.256,
       "idr": 590381094955496.9,
       "ils": 141331130627.64487,
       "inr": 3232482249455.527,
       "jpy": 5495053697589.182,
       "krw": 49852825546038.54,
       "kwd": 12077447457.68837,
       "lkr": 12822341147750.057,
       "mmk": 82721199100648.38,
       "mxn": 660494945524.4242,
       "myr": 178889995978.04053,
       "ngn": 30615451730188.742,
       "nok": 395036762609.9116,
       "nzd": 62989126808.36988,
       "php": 2150165047847.4563,
       "pkr": 11182034287589.78,
       "pln": 156124358605.4522,
       "rub": 3584534492884.358,
       "sar": 147723558373.85236,
       "sek": 402761423636.0185,
       "sgd": 52203979893.99898,
       "thb": 1344087080402.9805,
       "try": 1060702406800.6918,
       "twd": 1224316358873.4194,
       "uah": 1447664565290.5457,
       "vef": 3943259283.9364214,
       "vnd": 931002501803117.1,
       "zar": 706005663180.3549,
       "xdr": 29082964794.67312,
       "xag": 1562319879.635162,
       "xau": 19920292.056262407,
       "bits": 1315902220287.102,
       "sats": 131590222028710.2
     },
     "market_cap_percentage": {
       "btc": 46.67928828023275,
       "eth": 18.37116006696371,
       "usdt": 6.718906792070801,
       "xrp": 3.353651438610752,
       "bnb": 3.016864598491471,
       "usdc": 2.1637761624810277,
       "steth": 1.185846274005092,
       "ada": 0.88446771174989,
       "sol": 0.8477302285742911,
       "doge": 0.7777379834053286
     },
     "market_cap_change_percentage_24h_usd": 0.18639337161630568,
     "updated_at": 1689770619
   }
 }
 */

// MARK: - GlobalData
struct GlobalData: Codable {
    let data: MarketDataModel?
}

// MARK: - MarketDataModel
struct MarketDataModel: Codable {
    let totalMarketCap, totalVolume, marketCapPercentage: [String: Double]
    let marketCapChangePercentage24HUsd: Double
    
    enum CodingKeys: String, CodingKey {
        case totalMarketCap = "total_market_cap"
        case totalVolume = "total_volume"
        case marketCapPercentage = "market_cap_percentage"
        case marketCapChangePercentage24HUsd = "market_cap_change_percentage_24h_usd"
    }
    
    var marketCap: String {
        if let item = totalMarketCap.first(where: {$0.key == "usd" }){
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }
    
    var volumne: String {
        if let item = totalVolume.first(where:  {$0.key == "usd"}) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
        
    }
    
    var btcDominance: String {
        if let item = marketCapPercentage.first(where:  {$0.key == "btc"}) {
            return item.value.asPercentString()
        }
        return ""
    }
}
