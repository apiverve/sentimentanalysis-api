declare module '@apiverve/sentimentanalysis' {
  export interface sentimentanalysisOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface sentimentanalysisResponse {
    status: string;
    error: string | null;
    data: SentimentAnalysisData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface SentimentAnalysisData {
      comparative:     number | null;
      sentimentText:   null | string;
      sentiment:       number | null;
      isPositive:      boolean | null;
      isNegative:      boolean | null;
      normalizedScore: number | null;
  }

  export default class sentimentanalysisWrapper {
    constructor(options: sentimentanalysisOptions);

    execute(callback: (error: any, data: sentimentanalysisResponse | null) => void): Promise<sentimentanalysisResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: sentimentanalysisResponse | null) => void): Promise<sentimentanalysisResponse>;
    execute(query?: Record<string, any>): Promise<sentimentanalysisResponse>;
  }
}
