.class public Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;
.super Ljava/lang/Object;
.source "CarrierInformationNetworkHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper$CarrierSettingsListener;
    }
.end annotation


# instance fields
.field public mCachedCarrierLogoVisibility:Z

.field private mCachedCarrierPlmnText:Ljava/lang/String;

.field private mCallbackList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;",
            ">;"
        }
    .end annotation
.end field

.field private mSettingsListener:Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper$CarrierSettingsListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;->mCallbackList:Ljava/util/HashMap;

    .line 206
    new-instance v0, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper$CarrierSettingsListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper$CarrierSettingsListener;-><init>(Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;->mSettingsListener:Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper$CarrierSettingsListener;

    .line 47
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;->mSettingsListener:Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper$CarrierSettingsListener;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper$CarrierSettingsListener;->init()V

    return-void
.end method

.method private final getOperatorMccMnc()Ljava/lang/String;
    .locals 1

    .line 194
    sget-object p0, Lcom/android/systemui/Rune;->STATBAR_ICON_BRANDING:Ljava/lang/String;

    const-string v0, "SKT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "45005"

    return-object p0

    .line 196
    :cond_0
    sget-object p0, Lcom/android/systemui/Rune;->STATBAR_ICON_BRANDING:Ljava/lang/String;

    const-string v0, "KTT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "45008"

    return-object p0

    .line 198
    :cond_1
    sget-object p0, Lcom/android/systemui/Rune;->STATBAR_ICON_BRANDING:Ljava/lang/String;

    const-string v0, "LGT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "45006"

    return-object p0

    :cond_2
    const-string p0, "OPEN"

    return-object p0
.end method

.method private handleUpdateCarrierLogoVisibilities(ZZ)V
    .locals 4

    .line 73
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;->isSIMandOperatorMatched()Z

    move-result v0

    .line 74
    sget-boolean v1, Lcom/android/systemui/Rune;->STATBAR_CHUNO_LOGO_TEST:Z

    if-nez v1, :cond_1

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-nez p2, :cond_2

    .line 75
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;->mCachedCarrierLogoVisibility:Z

    if-ne v2, v1, :cond_2

    return-void

    .line 76
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCarrierLogoVisibilities(logoVisible:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", forceUpdate:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ") isSIMandOperatorMatched:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", disabledByQuickStar:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class p1, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    .line 78
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    invoke-virtual {p1}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;->isHomeCarrierDisabled()Z

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", hiddenBySettings:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class p1, Lcom/android/systemui/util/SettingsHelper;

    .line 79
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isNetworkInformationHidden()Z

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", networkVisible("

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;->mCachedCarrierLogoVisibility:Z

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ">>"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CarrierInformationNetworkHelper"

    .line 76
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;->mCachedCarrierLogoVisibility:Z

    .line 82
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;->mCallbackList:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    if-nez p1, :cond_3

    return-void

    .line 86
    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 87
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 88
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    .line 89
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;->mCallbackList:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;

    if-eqz p2, :cond_3

    .line 91
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;->mCachedCarrierLogoVisibility:Z

    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->updateCarrierInformationVisibility(Z)V

    goto :goto_2

    :cond_5
    return-void
.end method

.method private handleUpdateCarrierPlmnText(Ljava/lang/String;)V
    .locals 2

    .line 103
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;->mCachedCarrierPlmnText:Ljava/lang/String;

    .line 104
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;->mCallbackList:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 108
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 109
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 110
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 111
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;->mCallbackList:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;

    if-eqz v0, :cond_0

    .line 113
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;->mCachedCarrierPlmnText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->updateCarrierPlmnText(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method protected isSIMandOperatorMatched()Z
    .locals 12

    const/4 v0, 0x0

    .line 129
    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->getOperatorNumeric(I)Ljava/lang/String;

    move-result-object v1

    .line 130
    sget-object v2, Lcom/android/systemui/Rune;->STATBAR_ICON_BRANDING:Ljava/lang/String;

    const-string v3, "ORANGE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "isSIMandOperatorMatched() simNumeric:"

    const/4 v4, 0x1

    const-string v5, "CarrierInformationNetworkHelper"

    const/4 v6, 0x3

    if-eqz v2, :cond_4

    const-string p0, "unknown"

    const-string v2, "gsm.sim.operator.alpha"

    .line 133
    invoke-static {v2, v0, p0}, Lcom/android/systemui/util/DeviceState;->getMSimSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 134
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", spn:"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "20801"

    .line 135
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v9, "20802"

    const-string v10, "Orange F"

    if-nez v8, :cond_0

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 136
    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->getNetworkOperatorNumeric(I)Ljava/lang/String;

    move-result-object v7

    .line 137
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isSIMandOperatorMatched SIM is matched for Orange - plmnNumeric = "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_1

    .line 139
    invoke-virtual {v1, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 140
    invoke-virtual {v7, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 141
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v0

    .line 145
    :goto_0
    sget-boolean v7, Lcom/android/systemui/Rune;->SYSUI_SUPPORT_MULTI_SIM_DEVICE:Z

    if-eqz v7, :cond_3

    if-nez v1, :cond_3

    .line 146
    invoke-static {v4}, Lcom/android/systemui/util/DeviceState;->getOperatorNumeric(I)Ljava/lang/String;

    move-result-object v7

    .line 147
    invoke-static {v2, v4, p0}, Lcom/android/systemui/util/DeviceState;->getMSimSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 148
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    invoke-virtual {v10, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 149
    invoke-static {v4}, Lcom/android/systemui/util/DeviceState;->getNetworkOperatorNumeric(I)Ljava/lang/String;

    move-result-object p0

    .line 150
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSIMandOperatorMatched SIM2 is matched for Orange - plmnNumeric = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    .line 152
    invoke-virtual {v7, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 153
    invoke-virtual {p0, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 154
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_3
    return v1

    .line 159
    :cond_4
    sget-object v2, Lcom/android/systemui/Rune;->STATBAR_ICON_BRANDING:Ljava/lang/String;

    const-string v7, "SIN"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string p0, "52501"

    .line 161
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v7, "52502"

    if-nez v2, :cond_5

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 162
    :cond_5
    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->getNetworkOperatorNumeric(I)Ljava/lang/String;

    move-result-object v2

    .line 163
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ",  SIM is matched for singtel - plmnNumeric = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_6

    .line 165
    invoke-virtual {v1, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 166
    invoke-virtual {v2, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 167
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_1

    :cond_6
    move v1, v0

    .line 171
    :goto_1
    sget-boolean v2, Lcom/android/systemui/Rune;->SYSUI_SUPPORT_MULTI_SIM_DEVICE:Z

    if-eqz v2, :cond_8

    if-nez v1, :cond_8

    .line 172
    invoke-static {v4}, Lcom/android/systemui/util/DeviceState;->getOperatorNumeric(I)Ljava/lang/String;

    move-result-object v2

    .line 173
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 174
    :cond_7
    invoke-static {v4}, Lcom/android/systemui/util/DeviceState;->getNetworkOperatorNumeric(I)Ljava/lang/String;

    move-result-object p0

    .line 175
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", SIM2 is matched for singtel - plmnNumeric = "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_8

    .line 177
    invoke-virtual {v2, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 178
    invoke-virtual {p0, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 179
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_8
    return v1

    :cond_9
    if-eqz v1, :cond_a

    .line 185
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;->getOperatorMccMnc()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    .line 186
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", SIM is matched!!!"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_a
    return v0
.end method

.method public synthetic lambda$updateCarrierLogoVisibilities$0$CarrierInformationNetworkHelper(ZZ)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;->handleUpdateCarrierLogoVisibilities(ZZ)V

    return-void
.end method

.method public synthetic lambda$updateCarrierPlmnText$1$CarrierInformationNetworkHelper(Ljava/lang/String;)V
    .locals 0

    .line 100
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;->handleUpdateCarrierPlmnText(Ljava/lang/String;)V

    return-void
.end method

.method public registerInflaterCallback(Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;->mCallbackList:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->getInfoTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;->mCachedCarrierLogoVisibility:Z

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->updateCarrierInformationVisibility(Z)V

    return-void
.end method

.method public removeInflaterCallback(Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 57
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->getInfoTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;->mCallbackList:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->getInfoTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;->mCallbackList:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->getInfoTag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public updateCarrierLogoVisibilities()V
    .locals 2

    .line 64
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;->mCachedCarrierLogoVisibility:Z

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;->updateCarrierLogoVisibilities(ZZ)V

    return-void
.end method

.method public updateCarrierLogoVisibilities(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 67
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;->updateCarrierLogoVisibilities(ZZ)V

    return-void
.end method

.method public updateCarrierLogoVisibilities(ZZ)V
    .locals 2

    .line 70
    sget-object v0, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/policy/-$$Lambda$CarrierInformationNetworkHelper$0mZM8q3aj1tkAhqMJDLIcHQ9oRE;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/statusbar/policy/-$$Lambda$CarrierInformationNetworkHelper$0mZM8q3aj1tkAhqMJDLIcHQ9oRE;-><init>(Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;ZZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateCarrierPlmnText()V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;->mCachedCarrierPlmnText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;->updateCarrierPlmnText(Ljava/lang/String;)V

    return-void
.end method

.method public updateCarrierPlmnText(Ljava/lang/String;)V
    .locals 2

    .line 100
    sget-object v0, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/policy/-$$Lambda$CarrierInformationNetworkHelper$KVAQZLblbbccPBv2w6U_kq31EpM;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/policy/-$$Lambda$CarrierInformationNetworkHelper$KVAQZLblbbccPBv2w6U_kq31EpM;-><init>(Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
