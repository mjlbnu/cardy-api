package com.cardy.api.model;

import javax.persistence.*;
import java.util.Objects;

@Entity
@Table(name = "client_campaign")
public class ClientCampaign {

    @EmbeddedId
    private ClientCampaignKey id;

    @ManyToOne
    @MapsId("clientId")
    @JoinColumn(name = "id_client")
    private Client client;

    @ManyToOne
    @MapsId("campaignId")
    @JoinColumn(name = "id_campaign")
    private Campaign campaign;

    public ClientCampaignKey getId() {
        return id;
    }

    public void setId(ClientCampaignKey id) {
        this.id = id;
    }

    public Client getClient() {
        return client;
    }

    public void setClient(Client client) {
        this.client = client;
    }

    public Campaign getCampaign() {
        return campaign;
    }

    public void setCampaign(Campaign campaign) {
        this.campaign = campaign;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        ClientCampaign that = (ClientCampaign) o;
        return id.equals(that.id);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id);
    }
}
