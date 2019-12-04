.class Lcom/android/systemui/statusbar/phone/LightBarController$1;
.super Ljava/lang/Object;
.source "LightBarController.java"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/LightBarController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/LightBarController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/LightBarController;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController$1;->this$0:Lcom/android/systemui/statusbar/phone/LightBarController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private postUpdateColorStyle(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 131
    sget-object p1, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$LightBarController$1$Iqw79AazPC5WOtsrbq0joEv-xck;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$LightBarController$1$Iqw79AazPC5WOtsrbq0joEv-xck;-><init>(Lcom/android/systemui/statusbar/phone/LightBarController$1;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 134
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LightBarController$1;->this$0:Lcom/android/systemui/statusbar/phone/LightBarController;

    const/16 p1, 0x20

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/LightBarController;->updateStyle(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public synthetic lambda$postUpdateColorStyle$0$LightBarController$1()V
    .locals 1

    .line 132
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LightBarController$1;->this$0:Lcom/android/systemui/statusbar/phone/LightBarController;

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/LightBarController;->updateStyle(I)V

    return-void
.end method

.method public onStateChanged(I)V
    .locals 0

    const/4 p1, 0x0

    .line 121
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/LightBarController$1;->postUpdateColorStyle(Z)V

    return-void
.end method

.method public onStatePostChange()V
    .locals 1

    const/4 v0, 0x1

    .line 126
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/LightBarController$1;->postUpdateColorStyle(Z)V

    return-void
.end method
