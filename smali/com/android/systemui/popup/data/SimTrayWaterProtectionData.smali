.class public Lcom/android/systemui/popup/data/SimTrayWaterProtectionData;
.super Ljava/lang/Object;
.source "SimTrayWaterProtectionData.java"


# instance fields
.field private final mDisplayManagerWrapper:Lcom/android/systemui/popup/util/DisplayManagerWrapper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/popup/util/DisplayManagerWrapper;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/android/systemui/popup/data/SimTrayWaterProtectionData;->mDisplayManagerWrapper:Lcom/android/systemui/popup/util/DisplayManagerWrapper;

    return-void
.end method


# virtual methods
.method public getBodyImage()I
    .locals 0

    .line 36
    sget-boolean p0, Lcom/android/systemui/Rune;->SYSUI_IS_TABLET_DEVICE:Z

    if-eqz p0, :cond_0

    .line 37
    sget p0, Lcom/android/systemui/R$drawable;->sim_card_tray_water_protection_dialog_body_animation_tablet:I

    return p0

    .line 38
    :cond_0
    sget-boolean p0, Lcom/android/systemui/Rune;->POPUP_SUPPORT_SIM_CARD_TRAY_ON_RIGHT_WATER_PROTECTION_POPUP:Z

    if-eqz p0, :cond_1

    .line 39
    sget p0, Lcom/android/systemui/R$drawable;->sim_card_tray_right_water_protection_dialog_body_animation:I

    return p0

    .line 41
    :cond_1
    sget p0, Lcom/android/systemui/R$drawable;->sim_card_tray_water_protection_dialog_body_animation:I

    return p0
.end method

.method public getBodyMessage(I)I
    .locals 1

    .line 23
    sget-boolean p0, Lcom/android/systemui/Rune;->POPUP_SUPPORT_SD_CARD_STORAGE:Z

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    if-eqz p0, :cond_0

    .line 25
    sget p0, Lcom/android/systemui/R$string;->sim_sd_card_tray_water_protection_dialog_body:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/android/systemui/R$string;->sim_card_tray_water_protection_dialog_body:I

    goto :goto_0

    :cond_1
    if-eqz p0, :cond_2

    .line 26
    sget p0, Lcom/android/systemui/R$string;->sim_sd_card_tray_empty_water_protection_dialog_body:I

    goto :goto_0

    :cond_2
    sget p0, Lcom/android/systemui/R$string;->sim_card_tray_empty_water_protection_dialog_body:I

    :goto_0
    return p0
.end method

.method public getTitleMessage()I
    .locals 0

    .line 17
    sget-boolean p0, Lcom/android/systemui/Rune;->POPUP_SUPPORT_SD_CARD_STORAGE:Z

    if-eqz p0, :cond_0

    .line 18
    sget p0, Lcom/android/systemui/R$string;->sim_sd_card_tray_water_protection_dialog_title:I

    goto :goto_0

    .line 19
    :cond_0
    sget p0, Lcom/android/systemui/R$string;->sim_card_tray_water_protection_dialog_title:I

    :goto_0
    return p0
.end method
