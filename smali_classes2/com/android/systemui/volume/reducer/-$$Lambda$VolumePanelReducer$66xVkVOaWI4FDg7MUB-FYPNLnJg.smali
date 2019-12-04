.class public final synthetic Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$66xVkVOaWI4FDg7MUB-FYPNLnJg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:J


# direct methods
.method public synthetic constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$66xVkVOaWI4FDg7MUB-FYPNLnJg;->f$0:J

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-wide v0, p0, Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$66xVkVOaWI4FDg7MUB-FYPNLnJg;->f$0:J

    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    invoke-static {v0, v1, p1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->lambda$isUserAttemptInGracePeriod$7(JLcom/samsung/systemui/splugins/volume/VolumePanelRow;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
