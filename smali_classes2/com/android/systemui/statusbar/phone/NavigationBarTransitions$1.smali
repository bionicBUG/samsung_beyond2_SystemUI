.class Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$1;
.super Landroid/view/IWallpaperVisibilityListener$Stub;
.source "NavigationBarTransitions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$1;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    invoke-direct {p0}, Landroid/view/IWallpaperVisibilityListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onWallpaperVisibilityChanged$0$NavigationBarTransitions$1()V
    .locals 2

    .line 81
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$1;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->access$200(Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;ZZ)V

    return-void
.end method

.method public onWallpaperVisibilityChanged(ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 80
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$1;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    invoke-static {p2, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->access$002(Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;Z)Z

    .line 81
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$1;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->access$100(Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarTransitions$1$5foY_Yygo1gW25-mVBRpPSQRb_g;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarTransitions$1$5foY_Yygo1gW25-mVBRpPSQRb_g;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$1;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
