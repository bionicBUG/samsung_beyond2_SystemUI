.class public final synthetic Lcom/android/systemui/statusbar/policy/-$$Lambda$CarrierInformationNetworkHelper$0mZM8q3aj1tkAhqMJDLIcHQ9oRE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;

.field private final synthetic f$1:Z

.field private final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$CarrierInformationNetworkHelper$0mZM8q3aj1tkAhqMJDLIcHQ9oRE;->f$0:Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$CarrierInformationNetworkHelper$0mZM8q3aj1tkAhqMJDLIcHQ9oRE;->f$1:Z

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$CarrierInformationNetworkHelper$0mZM8q3aj1tkAhqMJDLIcHQ9oRE;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$CarrierInformationNetworkHelper$0mZM8q3aj1tkAhqMJDLIcHQ9oRE;->f$0:Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$CarrierInformationNetworkHelper$0mZM8q3aj1tkAhqMJDLIcHQ9oRE;->f$1:Z

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$CarrierInformationNetworkHelper$0mZM8q3aj1tkAhqMJDLIcHQ9oRE;->f$2:Z

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;->lambda$updateCarrierLogoVisibilities$0$CarrierInformationNetworkHelper(ZZ)V

    return-void
.end method
