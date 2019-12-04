.class public final Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$SecUserSwitcherController;
.super Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;
.source "TwoPhoneModeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SecUserSwitcherController"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 377
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;-><init>()V

    return-void
.end method


# virtual methods
.method public dismissUserSwitchingDialog(I)V
    .locals 0

    .line 385
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->dismissUserSwitchingDialog(I)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 0

    return-void
.end method

.method public inflateIcon(Lcom/android/systemui/statusbar/phone/TwoPhoneModeViewInterface;)Landroid/widget/ImageView;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public init(Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;)V
    .locals 0

    return-void
.end method

.method public isTwoPhoneUserCreated()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 0

    return-void
.end method

.method public showDoneToast(I)V
    .locals 0

    return-void
.end method

.method public updateTwoPhoneIcons()V
    .locals 0

    return-void
.end method
