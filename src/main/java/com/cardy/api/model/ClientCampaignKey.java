package com.cardy.api.model;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import java.io.Serializable;
import java.util.Objects;

@Embeddable
public class ClientCampaignKey implements Serializable {

    @Column(name = "id_client")
    private Long clientId;

    @Column(name = "id_campaign")
    private Long campaignId;

    public Long getClientId() {
        return clientId;
    }

    public void setClientId(Long clientId) {
        this.clientId = clientId;
    }

    public Long getCampaignId() {
        return campaignId;
    }

    public void setCampaignId(Long campaignId) {
        this.campaignId = campaignId;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        ClientCampaignKey that = (ClientCampaignKey) o;
        return clientId.equals(that.clientId) &&
                campaignId.equals(that.campaignId);
    }

    @Override
    public int hashCode() {
        return Objects.hash(clientId, campaignId);
    }
}
