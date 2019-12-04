.class public final synthetic Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$Toq2TMDsjbym7OVQKwPqh_VeKOo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/recents/OverviewProxyService$1;

.field private final synthetic f$1:I

.field private final synthetic f$2:I

.field private final synthetic f$3:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/recents/OverviewProxyService$1;IIJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$Toq2TMDsjbym7OVQKwPqh_VeKOo;->f$0:Lcom/android/systemui/recents/OverviewProxyService$1;

    iput p2, p0, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$Toq2TMDsjbym7OVQKwPqh_VeKOo;->f$1:I

    iput p3, p0, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$Toq2TMDsjbym7OVQKwPqh_VeKOo;->f$2:I

    iput-wide p4, p0, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$Toq2TMDsjbym7OVQKwPqh_VeKOo;->f$3:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$Toq2TMDsjbym7OVQKwPqh_VeKOo;->f$0:Lcom/android/systemui/recents/OverviewProxyService$1;

    iget v1, p0, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$Toq2TMDsjbym7OVQKwPqh_VeKOo;->f$1:I

    iget v2, p0, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$Toq2TMDsjbym7OVQKwPqh_VeKOo;->f$2:I

    iget-wide v3, p0, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$Toq2TMDsjbym7OVQKwPqh_VeKOo;->f$3:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/recents/OverviewProxyService$1;->lambda$moveHintVI$11$OverviewProxyService$1(IIJ)V

    return-void
.end method
