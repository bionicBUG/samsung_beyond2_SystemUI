.class Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "TwoPhoneModeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$1;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserSwitchComplete(I)V
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$1;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->updateTwoPhoneIcons()V

    return-void
.end method
