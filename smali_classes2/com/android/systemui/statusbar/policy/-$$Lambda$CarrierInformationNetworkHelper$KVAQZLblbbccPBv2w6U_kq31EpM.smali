.class public final synthetic Lcom/android/systemui/statusbar/policy/-$$Lambda$CarrierInformationNetworkHelper$KVAQZLblbbccPBv2w6U_kq31EpM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$CarrierInformationNetworkHelper$KVAQZLblbbccPBv2w6U_kq31EpM;->f$0:Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$CarrierInformationNetworkHelper$KVAQZLblbbccPBv2w6U_kq31EpM;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$CarrierInformationNetworkHelper$KVAQZLblbbccPBv2w6U_kq31EpM;->f$0:Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$CarrierInformationNetworkHelper$KVAQZLblbbccPBv2w6U_kq31EpM;->f$1:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;->lambda$updateCarrierPlmnText$1$CarrierInformationNetworkHelper(Ljava/lang/String;)V

    return-void
.end method
