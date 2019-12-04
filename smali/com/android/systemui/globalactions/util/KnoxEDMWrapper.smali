.class public Lcom/android/systemui/globalactions/util/KnoxEDMWrapper;
.super Ljava/lang/Object;
.source "KnoxEDMWrapper.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/android/systemui/globalactions/util/KnoxEDMWrapper;->mContext:Landroid/content/Context;

    .line 13
    iget-object p1, p0, Lcom/android/systemui/globalactions/util/KnoxEDMWrapper;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/globalactions/util/KnoxEDMWrapper;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-void
.end method


# virtual methods
.method public isCellularDataAllowed()Z
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/android/systemui/globalactions/util/KnoxEDMWrapper;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isCellularDataAllowed()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/globalactions/util/KnoxEDMWrapper;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 34
    invoke-virtual {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->checkEnableUseOfPacketData(Z)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isPowerOffAllowed()Z
    .locals 1

    .line 17
    iget-object p0, p0, Lcom/android/systemui/globalactions/util/KnoxEDMWrapper;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    invoke-virtual {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isPowerOffAllowed(Z)Z

    move-result p0

    return p0
.end method

.method public isSafeModeAllowed()Z
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/android/systemui/globalactions/util/KnoxEDMWrapper;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    invoke-virtual {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isSafeModeAllowed()Z

    move-result p0

    return p0
.end method

.method public isSettingsChangesAllowed()Z
    .locals 1

    .line 29
    iget-object p0, p0, Lcom/android/systemui/globalactions/util/KnoxEDMWrapper;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    invoke-virtual {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isSettingsChangesAllowed(Z)Z

    move-result p0

    return p0
.end method
