.class public Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;
.super Ljava/lang/Object;
.source "VolumePanelRow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/systemui/splugins/volume/VolumePanelRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mVolumePanelRow:Lcom/samsung/systemui/splugins/volume/VolumePanelRow;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    invoke-direct {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;-><init>()V

    iput-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->mVolumePanelRow:Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V
    .locals 2

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    invoke-direct {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;-><init>()V

    iput-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->mVolumePanelRow:Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    .line 97
    iget-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->mVolumePanelRow:Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    invoke-static {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->access$000(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->access$002(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;I)I

    .line 98
    iget-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->mVolumePanelRow:Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    invoke-static {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->access$100(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->access$102(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 99
    iget-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->mVolumePanelRow:Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    invoke-static {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->access$200(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->access$202(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 100
    iget-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->mVolumePanelRow:Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    invoke-static {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->access$300(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->access$302(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 101
    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->mVolumePanelRow:Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    invoke-static {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->access$400(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Ljava/util/HashMap;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->access$402(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Ljava/util/HashMap;)Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/systemui/splugins/volume/VolumePanelRow;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->mVolumePanelRow:Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    return-object p0
.end method

.method public setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->mVolumePanelRow:Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    invoke-static {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->access$100(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->mVolumePanelRow:Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    invoke-static {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->access$200(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setLongValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$LongStateKey;J)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->mVolumePanelRow:Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    invoke-static {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->access$400(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setStreamType(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->mVolumePanelRow:Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    invoke-static {v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->access$002(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;I)I

    return-object p0
.end method

.method public setStringValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->mVolumePanelRow:Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    invoke-static {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->access$300(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
