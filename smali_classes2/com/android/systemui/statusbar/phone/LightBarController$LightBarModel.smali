.class Lcom/android/systemui/statusbar/phone/LightBarController$LightBarModel;
.super Ljava/lang/Object;
.source "LightBarController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/LightBarController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LightBarModel"
.end annotation


# instance fields
.field BarState:I

.field DockedLight:Z

.field FullscreenLight:Z

.field HasDockedStack:Z

.field NeedDarkFontOfLockIndicator:Z

.field SettingsValueForWhiteKeyguardStatusBar:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/LightBarController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/LightBarController;ZZZZZI)V
    .locals 0

    .line 660
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController$LightBarModel;->this$0:Lcom/android/systemui/statusbar/phone/LightBarController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 661
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/LightBarController$LightBarModel;->NeedDarkFontOfLockIndicator:Z

    .line 662
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/phone/LightBarController$LightBarModel;->FullscreenLight:Z

    .line 663
    iput-boolean p4, p0, Lcom/android/systemui/statusbar/phone/LightBarController$LightBarModel;->DockedLight:Z

    .line 664
    iput-boolean p5, p0, Lcom/android/systemui/statusbar/phone/LightBarController$LightBarModel;->HasDockedStack:Z

    .line 665
    iput-boolean p6, p0, Lcom/android/systemui/statusbar/phone/LightBarController$LightBarModel;->SettingsValueForWhiteKeyguardStatusBar:Z

    .line 666
    iput p7, p0, Lcom/android/systemui/statusbar/phone/LightBarController$LightBarModel;->BarState:I

    return-void
.end method


# virtual methods
.method public getLogString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 681
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, " LightBarModel"

    .line 682
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 683
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- NeedDarkFontOfLockIndicator:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController$LightBarModel;->NeedDarkFontOfLockIndicator:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 684
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", FullscreenLight:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController$LightBarModel;->FullscreenLight:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", DockedLight:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController$LightBarModel;->DockedLight:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 686
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", HasDockedStack:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController$LightBarModel;->HasDockedStack:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", white_lockscreen_statusbar:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController$LightBarModel;->SettingsValueForWhiteKeyguardStatusBar:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", StatusBarState:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/LightBarController$LightBarModel;->BarState:I

    invoke-static {p0}, Lcom/android/systemui/statusbar/StatusBarState;->toShortString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 689
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, ", LIGHT_STATUS_BAR_FLAG:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->getLightStatusBarFlag()Z

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 690
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isEqual(Lcom/android/systemui/statusbar/phone/LightBarController$LightBarModel;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 671
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController$LightBarModel;->NeedDarkFontOfLockIndicator:Z

    iget-boolean v2, p1, Lcom/android/systemui/statusbar/phone/LightBarController$LightBarModel;->NeedDarkFontOfLockIndicator:Z

    if-eq v1, v2, :cond_1

    return v0

    .line 672
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController$LightBarModel;->FullscreenLight:Z

    iget-boolean v2, p1, Lcom/android/systemui/statusbar/phone/LightBarController$LightBarModel;->FullscreenLight:Z

    if-eq v1, v2, :cond_2

    return v0

    .line 673
    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController$LightBarModel;->DockedLight:Z

    iget-boolean v2, p1, Lcom/android/systemui/statusbar/phone/LightBarController$LightBarModel;->DockedLight:Z

    if-eq v1, v2, :cond_3

    return v0

    .line 674
    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController$LightBarModel;->HasDockedStack:Z

    iget-boolean v2, p1, Lcom/android/systemui/statusbar/phone/LightBarController$LightBarModel;->HasDockedStack:Z

    if-eq v1, v2, :cond_4

    return v0

    .line 675
    :cond_4
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController$LightBarModel;->SettingsValueForWhiteKeyguardStatusBar:Z

    iget-boolean v2, p1, Lcom/android/systemui/statusbar/phone/LightBarController$LightBarModel;->SettingsValueForWhiteKeyguardStatusBar:Z

    if-eq v1, v2, :cond_5

    return v0

    .line 676
    :cond_5
    iget p0, p0, Lcom/android/systemui/statusbar/phone/LightBarController$LightBarModel;->BarState:I

    iget p1, p1, Lcom/android/systemui/statusbar/phone/LightBarController$LightBarModel;->BarState:I

    if-eq p0, p1, :cond_6

    return v0

    :cond_6
    const/4 p0, 0x1

    return p0
.end method
