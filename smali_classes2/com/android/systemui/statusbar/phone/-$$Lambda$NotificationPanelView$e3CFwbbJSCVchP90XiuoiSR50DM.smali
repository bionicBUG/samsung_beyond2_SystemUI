.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationPanelView$e3CFwbbJSCVchP90XiuoiSR50DM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

.field private final synthetic f$1:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationPanelView$e3CFwbbJSCVchP90XiuoiSR50DM;->f$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iput p2, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationPanelView$e3CFwbbJSCVchP90XiuoiSR50DM;->f$1:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationPanelView$e3CFwbbJSCVchP90XiuoiSR50DM;->f$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationPanelView$e3CFwbbJSCVchP90XiuoiSR50DM;->f$1:F

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->lambda$setQsExpansion$2$NotificationPanelView(F)V

    return-void
.end method
