.class public Lcom/android/systemui/popup/data/MWOverheatWarningData;
.super Ljava/lang/Object;
.source "MWOverheatWarningData.java"


# instance fields
.field private mLogWrapper:Lcom/android/systemui/popup/util/PopupUILogWrapper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/popup/util/PopupUILogWrapper;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/android/systemui/popup/data/MWOverheatWarningData;->mLogWrapper:Lcom/android/systemui/popup/util/PopupUILogWrapper;

    return-void
.end method


# virtual methods
.method public getBody()I
    .locals 0

    .line 26
    sget-boolean p0, Lcom/android/systemui/Rune;->SYSUI_IS_TABLET_DEVICE:Z

    if-eqz p0, :cond_0

    .line 27
    sget p0, Lcom/android/systemui/R$string;->multiwindow_overheat_warning_dialog_body_tablet:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/android/systemui/R$string;->multiwindow_overheat_warning_dialog_body_phone:I

    :goto_0
    return p0
.end method

.method public getPButton()I
    .locals 0

    .line 31
    sget p0, Lcom/android/systemui/R$string;->yes:I

    return p0
.end method

.method public getTitle()I
    .locals 0

    .line 22
    sget p0, Lcom/android/systemui/R$string;->multiwindow_overheat_warning_dialog_title:I

    return p0
.end method
