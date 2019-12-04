.class Lqs/src/com/android/systemui/qs/QSMiscContainer$3;
.super Ljava/lang/Object;
.source "QSMiscContainer.java"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqs/src/com/android/systemui/qs/QSMiscContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/statusbar/policy/UserInfoController;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lqs/src/com/android/systemui/qs/QSMiscContainer;


# direct methods
.method constructor <init>(Lqs/src/com/android/systemui/qs/QSMiscContainer;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer$3;->this$0:Lqs/src/com/android/systemui/qs/QSMiscContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Landroid/net/Uri;)V
    .locals 1

    const-string v0, "emergency_mode"

    .line 175
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "QSMiscContainer"

    const-string v0, "onChanged() - emergency_mode"

    .line 176
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object p0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer$3;->this$0:Lqs/src/com/android/systemui/qs/QSMiscContainer;

    invoke-virtual {p0}, Lqs/src/com/android/systemui/qs/QSMiscContainer;->updateEverything()V

    :cond_0
    return-void
.end method
