.class Lcom/android/systemui/statusbar/phone/StatusBarWindowController$3;
.super Ljava/lang/Object;
.source "StatusBarWindowController.java"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBarWindowController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowController;)V
    .locals 0

    .line 1292
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$3;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDozingChanged(Z)V
    .locals 0

    .line 1310
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$3;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->setDozing(Z)V

    return-void
.end method

.method public onStateChanged(I)V
    .locals 1

    .line 1295
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$3;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->access$200(Lcom/android/systemui/statusbar/phone/StatusBarWindowController;I)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1298
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$3;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->access$300(Lcom/android/systemui/statusbar/phone/StatusBarWindowController;)Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->getNeutralColors()Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->supportsDarkText()Z

    move-result p1

    .line 1299
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$3;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->access$400(Lcom/android/systemui/statusbar/phone/StatusBarWindowController;Z)V

    goto :goto_0

    .line 1303
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$3;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->access$400(Lcom/android/systemui/statusbar/phone/StatusBarWindowController;Z)V

    :goto_0
    return-void
.end method
