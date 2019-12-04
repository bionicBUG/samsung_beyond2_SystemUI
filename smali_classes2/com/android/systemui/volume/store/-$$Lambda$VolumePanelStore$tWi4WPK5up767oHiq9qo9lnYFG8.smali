.class public final synthetic Lcom/android/systemui/volume/store/-$$Lambda$VolumePanelStore$tWi4WPK5up767oHiq9qo9lnYFG8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/samsung/systemui/splugins/volume/VolumePanelState;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/store/-$$Lambda$VolumePanelStore$tWi4WPK5up767oHiq9qo9lnYFG8;->f$0:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/store/-$$Lambda$VolumePanelStore$tWi4WPK5up767oHiq9qo9lnYFG8;->f$0:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumeMiddleware;

    invoke-static {p0, p1}, Lcom/android/systemui/volume/store/VolumePanelStore;->lambda$onChanged$0(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumeMiddleware;)V

    return-void
.end method
