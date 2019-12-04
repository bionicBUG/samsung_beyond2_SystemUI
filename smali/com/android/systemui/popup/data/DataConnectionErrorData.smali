.class public Lcom/android/systemui/popup/data/DataConnectionErrorData;
.super Ljava/lang/Object;
.source "DataConnectionErrorData.java"


# instance fields
.field private mLogWrapper:Lcom/android/systemui/popup/util/PopupUILogWrapper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/popup/util/PopupUILogWrapper;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/android/systemui/popup/data/DataConnectionErrorData;->mLogWrapper:Lcom/android/systemui/popup/util/PopupUILogWrapper;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/popup/data/DataConnectionErrorData;)Lcom/android/systemui/popup/util/PopupUILogWrapper;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/android/systemui/popup/data/DataConnectionErrorData;->mLogWrapper:Lcom/android/systemui/popup/util/PopupUILogWrapper;

    return-object p0
.end method


# virtual methods
.method public getBody(I)I
    .locals 0

    if-eqz p1, :cond_3

    const/4 p0, 0x1

    if-eq p1, p0, :cond_2

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1

    const/4 p0, 0x4

    if-eq p1, p0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 47
    :cond_0
    sget p0, Lcom/android/systemui/R$string;->data_connection_error_no_signal_body:I

    return p0

    .line 45
    :cond_1
    sget p0, Lcom/android/systemui/R$string;->data_connection_error_data_roaming_off_body:I

    return p0

    .line 43
    :cond_2
    sget p0, Lcom/android/systemui/R$string;->data_connection_error_mobile_data_off_body:I

    return p0

    .line 39
    :cond_3
    sget-boolean p0, Lcom/android/systemui/Rune;->SYSUI_IS_TABLET_DEVICE:Z

    if-eqz p0, :cond_4

    .line 40
    sget p0, Lcom/android/systemui/R$string;->data_connection_error_flight_mode_on_body_tablet:I

    goto :goto_0

    .line 41
    :cond_4
    sget p0, Lcom/android/systemui/R$string;->data_connection_error_flight_mode_on_body:I

    :goto_0
    return p0
.end method

.method public getNButton(IZ)I
    .locals 1

    if-eqz p1, :cond_3

    const/4 p0, 0x1

    if-eq p1, p0, :cond_2

    const/4 p0, 0x2

    const/4 v0, -0x1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x4

    if-eq p1, p0, :cond_0

    return v0

    :cond_0
    if-eqz p2, :cond_1

    .line 75
    sget v0, Lcom/android/systemui/R$string;->later:I

    :cond_1
    return v0

    .line 71
    :cond_2
    sget p0, Lcom/android/systemui/R$string;->cancel:I

    return p0

    .line 69
    :cond_3
    sget p0, Lcom/android/systemui/R$string;->cancel:I

    return p0
.end method

.method public getPButton(IZ)I
    .locals 0

    if-eqz p1, :cond_4

    const/4 p0, 0x1

    if-eq p1, p0, :cond_3

    const/4 p0, 0x2

    if-eq p1, p0, :cond_2

    const/4 p0, 0x4

    if-eq p1, p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    if-eqz p2, :cond_1

    .line 61
    sget p0, Lcom/android/systemui/R$string;->retry:I

    goto :goto_0

    :cond_1
    sget p0, Lcom/android/systemui/R$string;->yes:I

    :goto_0
    return p0

    .line 59
    :cond_2
    sget p0, Lcom/android/systemui/R$string;->yes:I

    return p0

    .line 57
    :cond_3
    sget p0, Lcom/android/systemui/R$string;->popupui_dialog_turn_on_button:I

    return p0

    .line 55
    :cond_4
    sget p0, Lcom/android/systemui/R$string;->status_bar_settings_settings_button:I

    return p0
.end method

.method public getPButtonClickListener(Landroid/content/Context;IZLandroid/app/PendingIntent;)Ljava/lang/Runnable;
    .locals 1

    if-eqz p2, :cond_3

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 p1, 0x2

    const/4 v0, 0x0

    if-eq p2, p1, :cond_1

    const/4 p1, 0x4

    if-eq p2, p1, :cond_0

    return-object v0

    .line 105
    :cond_0
    new-instance p1, Lcom/android/systemui/popup/data/DataConnectionErrorData$3;

    invoke-direct {p1, p0, p3, p4}, Lcom/android/systemui/popup/data/DataConnectionErrorData$3;-><init>(Lcom/android/systemui/popup/data/DataConnectionErrorData;ZLandroid/app/PendingIntent;)V

    return-object p1

    :cond_1
    return-object v0

    .line 94
    :cond_2
    new-instance p2, Lcom/android/systemui/popup/data/DataConnectionErrorData$2;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/popup/data/DataConnectionErrorData$2;-><init>(Lcom/android/systemui/popup/data/DataConnectionErrorData;Landroid/content/Context;)V

    return-object p2

    .line 83
    :cond_3
    new-instance p2, Lcom/android/systemui/popup/data/DataConnectionErrorData$1;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/popup/data/DataConnectionErrorData$1;-><init>(Lcom/android/systemui/popup/data/DataConnectionErrorData;Landroid/content/Context;)V

    return-object p2
.end method

.method public getTitle(I)I
    .locals 0

    if-eqz p1, :cond_3

    const/4 p0, 0x1

    if-eq p1, p0, :cond_2

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1

    const/4 p0, 0x4

    if-eq p1, p0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 31
    :cond_0
    sget p0, Lcom/android/systemui/R$string;->data_connection_error_no_network_connection:I

    return p0

    .line 29
    :cond_1
    sget p0, Lcom/android/systemui/R$string;->data_connection_error_no_network_connection:I

    return p0

    .line 27
    :cond_2
    sget p0, Lcom/android/systemui/R$string;->data_connection_error_mobile_data_off_title:I

    return p0

    .line 25
    :cond_3
    sget p0, Lcom/android/systemui/R$string;->data_connection_error_flight_mode_on_title:I

    return p0
.end method
