.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$PanelCarrierLabelManager$Rf6D5h58_6HR6uf8vW1G-tNXNKM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$PanelCarrierLabelManager$Rf6D5h58_6HR6uf8vW1G-tNXNKM;->f$0:Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$PanelCarrierLabelManager$Rf6D5h58_6HR6uf8vW1G-tNXNKM;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$PanelCarrierLabelManager$Rf6D5h58_6HR6uf8vW1G-tNXNKM;->f$0:Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$PanelCarrierLabelManager$Rf6D5h58_6HR6uf8vW1G-tNXNKM;->f$1:Z

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->lambda$updateLabelVisibility$0$PanelCarrierLabelManager(Z)V

    return-void
.end method
