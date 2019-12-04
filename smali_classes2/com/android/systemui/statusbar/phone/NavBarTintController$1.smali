.class Lcom/android/systemui/statusbar/phone/NavBarTintController$1;
.super Landroid/view/CompositionSamplingListener;
.source "NavBarTintController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NavBarTintController;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NavBarTintController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NavBarTintController;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController$1;->this$0:Lcom/android/systemui/statusbar/phone/NavBarTintController;

    invoke-direct {p0, p2}, Landroid/view/CompositionSamplingListener;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public onSampleCollected(F)V
    .locals 1

    .line 84
    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_ENABLED:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController$1;->this$0:Lcom/android/systemui/statusbar/phone/NavBarTintController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavBarTintController;->access$000(Lcom/android/systemui/statusbar/phone/NavBarTintController;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController$1;->this$0:Lcom/android/systemui/statusbar/phone/NavBarTintController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavBarTintController;->access$100(Lcom/android/systemui/statusbar/phone/NavBarTintController;)Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController$1;->this$0:Lcom/android/systemui/statusbar/phone/NavBarTintController;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/NavBarTintController;->access$200(Lcom/android/systemui/statusbar/phone/NavBarTintController;F)V

    :cond_0
    return-void
.end method
